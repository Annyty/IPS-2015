<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Documento sin título</title>
        <script src="file:///C|/Users/user/AppData/Roaming/Adobe/Dreamweaver CS6/es_ES/Configuration/Temp/Assets/eamFF98.tmp/SpryMenuBar.js" type="text/javascript"></script>
        <link href="file:///C|/Users/user/AppData/Roaming/Adobe/Dreamweaver CS6/es_ES/Configuration/Temp/Assets/eamFF98.tmp/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
    </head>
    <style> 
        header, footer { width: 100%; height: 100px; background: #ddf; font-size: 2em; text-align: center; clear: both; } 
        section { position: relative; } 
        #izquierda { position: relative; width: 22%; top: 0; left: 0; background: #ddf; float: left; height: 900px; } 
        #derecha { position: relative; width: 78%; top: 0; right: 0; background: #ddf; float: right; height: 900px; } 
        .esqinfder { position: absolute; bottom: 5px; right: 5px; background: #ddf; } 
    </style>
    <body>
        <header> 
            Virtual Monkey 
        </header> 
        <section> 
            <fieldset id="f">
                <legend>Administrar disciplina</legend>
                <div>
                    <div id="izquierda">
                        <br />
                        <br />
                        <br />

                        USUARIO: ADMINISTRADOR

                        <ul id="MenuBar1">
                            <li> <form action="salir" method>
                                    <input type='submit' name='' value='Salir'>
                                </form>
                            </li>
                        </ul>





                    </div>
                   
                    <form action="registrarTesis" method>

                        <div id="derecha" align="left">                
                            <h2 align="center">Registrar Disciplina</h2><br>
                                <br />

                                <div>

                                    <label>Nombre Disciplina</label>
                                    <input name="nombre" type="text" style="vertical-align:middle" value="" size="80" maxlength="80" required/>
                                    <br />
                                    <br />
                                    <label>Descripcion</label>
                                    <input name="descripcion" type="text" style="vertical-align:middle" value="" size="80" maxlength="80" required/>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <input name="registrarDisciplina" type="submit" value="Registrar disciplina" />


                                </div>
                        </div>
                    </form>
            </fieldset>
        </section>
        <p>&nbsp;</p>
        <footer> 

        </footer>

    </body>
</html>
