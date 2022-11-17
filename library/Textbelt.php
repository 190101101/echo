<?php 

namespace library;

class Textbelt
{
    public static function send($POST)
    {
        $URL = 'https://textbelt.com/text';

        $CURL = CURL_INIT();

        CURL_SETOPT($CURL, CURLOPT_URL, $URL);

        CURL_SETOPT($CURL, CURLOPT_POST, 1);

        CURL_SETOPT($CURL, CURLOPT_POSTFIELDS, http_build_query($POST));

        CURL_SETOPT($CURL, CURLOPT_SSL_VERIFYPEER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_RETURNTRANSFER, TRUE);

        CURL_SETOPT($CURL, CURLOPT_HEADER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_FOLLOWLOCATION, TRUE);

        CURL_SETOPT($CURL, CURLOPT_TIMEOUT, 5);

        $EXEC = CURL_EXEC($CURL);

        CURL_CLOSE($CURL);

        return $EXEC;
    }

    public static function status($id)
    {
        $URL = "https://textbelt.com/status/{$id}";

        $CURL = CURL_INIT();

        CURL_SETOPT($CURL, CURLOPT_URL, $URL);

        CURL_SETOPT($CURL, CURLOPT_SSL_VERIFYPEER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_RETURNTRANSFER, TRUE);

        CURL_SETOPT($CURL, CURLOPT_HEADER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_FOLLOWLOCATION, TRUE);

        CURL_SETOPT($CURL, CURLOPT_TIMEOUT, 5);

        $EXEC = CURL_EXEC($CURL);

        CURL_CLOSE($CURL);

        return $EXEC;
    }

    public static function quota($key)
    {
        $URL = "https://textbelt.com/quota/{$key}";

        $CURL = CURL_INIT();

        CURL_SETOPT($CURL, CURLOPT_URL, $URL);

        CURL_SETOPT($CURL, CURLOPT_SSL_VERIFYPEER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_RETURNTRANSFER, TRUE);

        CURL_SETOPT($CURL, CURLOPT_HEADER, FALSE);

        CURL_SETOPT($CURL, CURLOPT_FOLLOWLOCATION, TRUE);

        CURL_SETOPT($CURL, CURLOPT_TIMEOUT, 5);

        $EXEC = CURL_EXEC($CURL);

        CURL_CLOSE($CURL);

        return $EXEC;
    }
}

/*
use library\Textbelt;

$key = '6afd8f514da99a125a6cd6fa14fa54c1955fa135Pv5cjKHcx4f0PbPVOmF4Ik0tM';

Textbelt::send([
    'phone' => '+994519886699',
    'message' => 'hello',
    'key' => $key,
])

Textbelt::status('547901661696818332');

Textbelt::quota($key);

*/
