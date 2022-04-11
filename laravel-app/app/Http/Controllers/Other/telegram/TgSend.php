<?php

declare (strict_types = 1);

/**
 * SysGram - System PHP Telegram Bot
 *
 * @package  SysGram
 * @author   J.A.Tuychiyev <j.a.tuychiyev@gmail.com>
 */

const TOKEN = '5100613891:AAHSryx5EkJUCrQzdaQdqCNC-m63HO-jmYk';

function bot($method, $datas = [])
{
    $url = "https://api.Telegram.org/bot" . TOKEN . "/" . $method;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $datas);
    $res = curl_exec($ch);
    if (curl_error($ch)) {
        var_dump(curl_error($ch));
    } else {
        return json_decode($res);
    }
}

$update = json_decode(file_get_contents('php://input'));
$message = $update->callback_query ? $update->callback_query : $update->message;
$text = mb_convert_encoding($message->text, 'UTF-8', 'auto');
$data = mb_convert_encoding($message->data, 'UTF-8', 'auto');

#message
$message_id = $message->message_id;
$chat_id = $message->chat->id;
$text = $message->text;
$audio = $message->audio;
$voice = $message->voice;
$video = $message->video;
$photo = $message->photo;
$document = $message->document;
$forward_from = $message->forward_from;
$forward_from_chat = $message->forward_from_chat;

#callback data
$callback_query = $update->callback_query;
$callback_chat_id = $callback_query->message->chat->id;
$callback_message_id = $callback_query->message->message_id;

#user data
$frist_name = $message->from->first_name;
$last_name = $message->from->last_name;
$username = $message->from->username;
$phone = $message->contact->phone_number;

#main send code
if($update):
    bot('sendMessage', [ 'chat_id' => $chat_id, 'text' => "This is my text", 'parse_mode' => "html" ]);
endif;
