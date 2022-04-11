<?php

namespace App\Http\Controllers\Other;

require __DIR__ . '/mail/PHPMailer.php';
require __DIR__ . '/mail/SMTP.php';
require __DIR__ . '/mail/Exception.php';

use App\Http\Controllers\Controller;
use App\Models\contact;
use App\Models\district;
use App\Models\petition;
use App\Models\region;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Lang;
use PHPMailer\PHPMailer\PHPMailer;

class landingController extends Controller
{
    public function index()
    {
        $lang = ucwords(Lang::locale());
        $r = region::select('region.id', "region$lang as regionName")->get();
        return view('landing-page', ['region' => $r]);
    }

    public function district(Request $request)
    {
        $lang = ucwords($request->lang);
        $c = contact::where('contact.districtId', "reg" . $request->regionId)->select("contact.fullNameUz as fullName", "contact.position$lang as position", 'contact.phone', 'contact.jobPhone', 'contact.site', 'contact.social')->first();
        $d = district::where('regionId', $request->regionId)->select('district.id', "district$lang as districtName")->get();
        return response()->json(['district' => $d, 'contact' => $c], 200);
    }

    public function contact(Request $request)
    {
        $lang = ucwords($request->lang);
        $c = contact::where('contact.districtId', $request->districtId)->select("contact.fullNameUz as fullName", "contact.position$lang as position", 'contact.phone', 'contact.jobPhone', 'contact.site', 'contact.social')->first();
        return response()->json($c, 200);
    }

    public function lang($set)
    {
        App::setLocale($set);
        session()->put('locale', $set);
        return redirect()->route('index');
    }

    public function sendData(Request $request)
    {
        $lang = ucwords(Lang::locale());

        $region = region::where('id', $request->region)->select('region.id', "region$lang as regionName")->first(); //имя указанная в форме
        $district = district::where('id', $request->district)->select('district.id', "district$lang as districtName")->first(); //район, указанный в форме

       #begin::Insert data
        $p = new petition();
        $p->regionId = $request->region;
        $p->districtId = $request->district;
        $p->chName = $request->chName;
        $p->yName = $request->yName;
        $p->phone = $request->phone;
        $p->save();
       #end::Insert data


        #begin::Send email
        $title = __('landing.send_title');
        $body = "
        <h2>" . __('landing.send_body_1') . "</h2>
        <b>" . __('landing.send_body_2') . ":</b> $region->regionName<br>
        <b>" . __('landing.send_body_3') . ":</b> $district->districtName<br>
        <b>" . __('landing.send_body_4') . ":</b> $request->chName<br>
        <b>" . __('landing.send_body_5') . ":</b> $$request->phone<br><br>
        <b>" . __('landing.send_body_6') . ":</b><br>$$request->yName
        ";

        $mail = new PHPMailer();

        try {
            $mail->isSMTP();
            $mail->CharSet = "UTF-8";
            $mail->SMTPAuth = true;
            $mail->Debugoutput = function ($str, $level) {$GLOBALS['status'][] = $str;};

            $mail->Host = 'smtp.yandex.ru'; // SMTP сервера вашей почты
            $mail->Username = 'sixyears@innocenter.uz'; // Логин на почте
            $mail->Password = '3m3RMeFP'; // Пароль на почте
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;
            $mail->setFrom('sixyears@innocenter.uz', 'Портал "Bilim makon"'); // Адрес самой почты и имя отправителя

            $mail->addAddress('kh.berdiev@innocenter.uz'); // Ещё один, если нужен

            $mail->isHTML(true);
            $mail->Subject = $title;
            $mail->Body = $body;

            if ($mail->send()):
                $result = "success";
                $result = "successuz";
                $result = "successru";
                return redirect()->back()->with('sendData', __('landing.send_data'));
            else:
                $result = "error";
                $result = "erroruz";
                $result = "errorru";
                return redirect()->back()->with('sendErrorData', __('landing.send_error_data'));
            endif;

        } catch (Exception $e) {
            $result = "error";
            $result = "erroruz";
            $result = "errorru";
            $status = "Сообщение не было отправлено. Причина ошибки: {$mail->ErrorInfo}";
        }


    }
}
