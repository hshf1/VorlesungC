<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" lang="de">

<head>
    <title>Codeschnipsel: Einfaches Kontaktformular - by 01-Scripts.de</title>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
    <meta name="author" content="Michael Lorer - www.01-scripts.de" />
    <meta name="description" content="Erstellung eines sehr einfachen Kontaktformulars mit HTML+PHP zum Kennenlernen der Grundlagen" />

    <!-- Lizenziert unter Creative Commons Namensnennung 3.0 Deutschland (CC BY 3.0)
         http://creativecommons.org/licenses/by/3.0/de/ -->

</head>

<body>

<h1>Codeschnipsel: Einfaches Kontaktformular - by 01-Scripts.de</h1>

<?PHP 
if(isset($_POST['send']) && $_POST['send'] == "ja"){
    $absender = preg_replace("/[^a-z0-9 !?:;,.\/_\-=+@#$&\*\(\)]/im", "",
    $_POST['email'] );

    $absender = preg_replace("/(content-type:|bcc:|cc:|to:|from:)/im", "",
    $absender );

    $txt = preg_replace( "/(content-type:|bcc:|cc:|to:|from:)/im", "", 
    $_POST['nachricht'] );

    mail("email@adresse.de","Betreff","Folgende Nachricht wurde �ber das Kontaktformular an Sie verschickt:\n\n".$txt."","From:".$absender."<".$absender.">");

    echo "<p><b>Ihre Nachricht wurde erfolgreich an den Webmaster verschickt!</b></p>";
    }
?>

<form action="<?PHP echo $PHP_SELF; ?>" method="post"> 
E-Mail-Adresse: <input type="text" name="email" size="20" /><br />
Nachricht: <textarea name="nachricht" rows="5" cols="20"></textarea><br />
<input type="hidden" name="send" value="ja" /> 
<input type="reset" value="L�schen" /><input type="submit" value="Abschicken" /> 
</form>

<p style="margin-top: 100px;">Dieser Beitrag ist unter der <a href="http://creativecommons.org/licenses/by/3.0/de/">Creative Commons Namensnennung 3.0 Deutschland</a> lizensiert.<br />
Bearbeitung, Nutzung &amp; Verbreitung ist ausdr&uuml;cklich gestattet.</p>

</body>
</html>
