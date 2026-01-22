{
  lib,
  qtModule,
  qtbase,
}:

qtModule {
  pname = "qtmacextras";
  propagatedBuildInputs = [ qtbase ];
<<<<<<< HEAD
  meta = {
    maintainers = with lib.maintainers; [ periklis ];
    platforms = lib.platforms.darwin;
||||||| 213fed0310e3
  meta = with lib; {
    maintainers = with maintainers; [ periklis ];
    platforms = platforms.darwin;
=======
  meta = {
    maintainers = [ ];
    platforms = lib.platforms.darwin;
>>>>>>> master
  };
}
