<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Education;
use App\Models\Employee;
use App\Models\Files;
use Exception;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    public function create(Request $request)
    {
        try {
            if ($request->hasFile('diplom')):

                #begin::Insert File
                $diplom = $request->file('diplom')->store('public');
                $info = pathinfo($diplom);
                $f = new Files();
                $f->hostName = "{$_SERVER['REQUEST_SCHEME']}://{$_SERVER['HTTP_HOST']}";
                $f->path = $info['dirname'];
                $f->baseName = $info['basename'];
                $f->originName = $request->file('diplom')->getClientOriginalName();
                $f->save();
                copy(storage_path("app/public/" . $info['basename']), __DIR__ . "/../../../../../assets/files/diplom/" . $info['basename']);
                if (file_exists(storage_path("app/public/" . $info['basename']))):
                    unlink(storage_path("app/public/" . $info['basename']));
                endif;
                #end::Insert File

                #begin::Insert Education
                $edu = new Education();
                $edu->level = $request->level;
                $edu->expirationDate = $request->expirationDate;
                $edu->dipSeries = $request->dipSeries;
                $edu->dipNumber = $request->dipNumber;
                $edu->dipIssueDate = $request->dipIssueDate;
                $edu->fileId = $f->id;
                $edu->position = $request->eduPosition;
                $edu->save();
                #end::Insert Education

                #begin::Insert Employee
                $e = new Employee();
                $e->name = $request->fullName;
                $e->phone = $request->phone;
                $e->groupPEI = $request->groupPEI;
                $e->workWith = $request->workWith;
                $e->eduId = $edu->id;
                $e->position = $request->position;
                $e->gender = $request->gender;
                $e->save();
                #end::Insert Employee

                $employee = Employee::where('id', $e->id)->join('education', 'education.id', '=', 'employee.eduId')->select('employee.id', 'employee.name', 'employee.phone', 'employee.groupPEI', 'employee.workWith', 'employee.position', 'employee.gender', 'employee.eduId', 'education.level eduLevel', 'education.expirationDate', 'education.dipSeries', 'education.dipNumber', 'education.dipIssueDate', 'education.fileId', 'education.position as eduPosition')->get();
                return response()->json(['employee' => $employee], 200);
            else:
                return response()->json(['error' => "Was n't selected file diploma"], 500);
            endif;

        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }

    public function read()
    {
        try {
            
        } catch (Exception $e) {
            return response()->json(['error' => $e], 500);
        }
    }
}
