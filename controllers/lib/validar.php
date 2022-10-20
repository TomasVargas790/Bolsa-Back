<?php


/**
 *
 * Valida un email usando filter_var. 
 * Devuelve true si es correcto o false en caso contrario
 *
 * $str la dirección a validar
 * 
 *
 */
function is_valid_email($str)
{
  return (false !== filter_var($str, FILTER_VALIDATE_EMAIL));
}

/**
 *
 * Valida un int separandolo en chars y comparando con un string de numeros
 * Devuelve true si es correcto o false en caso que no encuentre el char en el string de numeros
 *
 * $int el numero a validar
 * 
 *
 */

function is_valid_int($int)
{
  $numero = "013456789";
  $longitud = strlen($int);
  for ($i = 0; $i < $longitud; $i++) {
    $char = substr($int, $i, 1);
    $posicion = strpos($char, $numero);
    if (!$posicion) {
      return false;
    }
  }
  return true;
}
/**
 *
 * Valida un int separandolo en chars y comparando con un string
 * Devuelve true si es correcto o false en caso que no encuentre el char en el string
 *
 * $alpha el numero a validar
 * 
 *
 */
function is_valid_alpha($alpha)
{
  $numero = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  $longitud = strlen($alpha);
  for ($i = 0; $i < $longitud; $i++) {
    $char = substr($alpha, $i, 1);
    $posicion = strpos($char, $numero);
    if (!$posicion) {
      return false;
    }
  }
  return true;
}
/**
 *
 * Valida un int separandolo en chars y comparando con un string
 * Devuelve true si es correcto o false en caso que no encuentre el char en el string alfanumerico
 *
 * $alphanum el numero a validar
 * 
 *
 */
function is_valid_alphanum($alphanum)
{
  $numero = "ABCDEFGHIJKLMNOPQRSTUVWXYZ013456789";
  $longitud = strlen($alphanum);
  for ($i = 0; $i < $longitud; $i++) {
    $char = substr($alphanum, $i, 1);
    $posicion = strpos($char, $numero);
    if (!$posicion) {
      return false;
    }
  }
  return true;
}

/**
* @return bool
*/
function is_session_started()
{
    if ( php_sapi_name() !== 'cli' ) {
        if ( version_compare(phpversion(), '5.4.0', '>=') ) {
            return session_status() === PHP_SESSION_ACTIVE ? TRUE : FALSE;
        } else {
            return session_id() === '' ? FALSE : TRUE;
        }
    }
    return FALSE;
}


