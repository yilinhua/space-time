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
    <script type="text/javascript" src="Scripts/chur-alert.1.0.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/chur.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <script type="text/javascript">


        $(function () {

            $.fn.bcd = function (options) {
                var defaults = {
                    buttons: []
                }
                var str = "";

                var o = $.extend(defaults, options);
                $.each(o.buttons, function (i, row) {
                    str += '<a class="btn" id="' + row["id"] + '">' + row["name"] + '</a>&nbsp;';
                    $('#' + row["id"]).live('click', function () {
                        try {
                            row["callback"]()
                        }
                        catch (err) {
                            alert('出错啦：' + err.message)
                        }
                    })
                });
                $('body').append(str);
            }

            $('body').bcd({
                buttons: [{
                    id: 'aa',
                    name: '关闭',
                    callback: function () { alert('aaaaa') }
                }, {
                    id: 'bb',
                    name: '关闭',
                    callback: function () { alert('bbbbbbb') }
                },
                {
                    id: 'ccc',
                    name: '关闭'
                }]
            })

            abc=function () { alert('sssss') }
             
            $('body').click(function () {
               abc
            })
            //


            jQuery.extend({
                foo: function () {
                    alert('This is a test. This is only a test.');
                },
                bar: function (param) {
                    alert('This function takes a parameter, which is "' + param + '".');
                }
            });
            $.foo();

        })

    </script>
</head>
<body>
    <input type="file" size="1" />
</body>
</html>
