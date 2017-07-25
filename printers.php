<?php
/* detecta impressora compartilhada localmente */
var_dump(printer_list(PRINTER_ENUM_LOCAL | PRINTER_ENUM_SHARED));
?>