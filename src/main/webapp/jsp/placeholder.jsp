﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript">


        $(function () {
            // jQuery code 
            var i = document.createElement("input");
            // Only bind if placeholder isn't natively supported by the browser 
            if (!("placeholder" in i)) {
                $("input[placeholder]").each(function () {
                    var self = $(this);
                    self.val(self.attr("placeholder")).bind({
                        focus: function () {
                            if (self.val() === self.attr("placeholder")) {
                                self.val("");
                            }
                        },
                        blur: function () {
                            var label = self.attr("placeholder");
                            if (label && self.val() === "") {
                                self.val(label);
                            }
                        }
                    });
                });
            }
             
        })

    </script>

    <style type="text/css">
        @font-face {
            font-family: 'MyWebFont';
            src: url('webfont.eot'); /* IE9 Compat Modes */
            src: url('webfont.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
            url('webfont.woff') format('woff'), /* Modern Browsers */
            url('webfont.ttf') format('truetype'), /* Safari, Android, iOS */
            url('webfont.svg#svgFontName') format('svg'); /* Legacy iOS */
        }

        body {
            font-family: 'MyWebFont', Fallback, sans-serif;
        }
    </style>
</head>
<body>
    <form>
    <input type="text" name="search" placeholder="Search" value="" />
    <input type="submit" value="提交" />
    </form>
</body>
</html>
