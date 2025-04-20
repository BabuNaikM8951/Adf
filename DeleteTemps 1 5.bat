del c:\windows\ccmcache\*.* /f /s /q

del %temp%\*.tmp /f /s /q
del %windir%\prefetch\*.* /f /s /q
del %windir%\temp\*.* /f /s /q
rmdir /s /q %windir%\temp\

del c:\*.tmp /f /s /q
del d:\*.tmp /f /s /q
del c:\temp\*.tmp /f /s /q
del d:\temp\*.tmp /f /s /q
del c:\windows\prefetch\*.* /f /s /q
del d:\windows\prefetch\*.* /f /s /q

del c:\windows\temp\*.* /f /s /q
del d:\windows\temp\*.* /f /s /q
del c:\win98\temp\*.* /f /s /q
del d:\win98\temp\*.* /f /s /q
del c:\winnt\temp\*.* /f /s /q
del d:\winnt\temp\*.* /f /s /q
del c:\winme\temp\*.* /f /s /q
del d:\winme\temp\*.* /f /s /q

del C:\Windows\ccmcache\*.* /f /s /q

rmdir /s /q c:\windows\temp\
rmdir /s /q d:\windows\temp\


del C:\"Documents and Settings"\%username%\Cookies\*.* /f /s /q
del D:\"Documents and Settings"\%username%\Cookies\*.* /f /s /q
del c:\"documents and settings"\%username%\Recent\*.* /f /s /q
del D:\"documents and settings"\%username%\Recent\*.* /f /s /q
del C:\"documents and settings"\%username%\"local settings"\temp\*.* /f /s /q
del D:\"documents and settings"\%username%\"local settings"\temp\*.* /f /s /q
rmdir /s /q c:\"documents and settings"\%username%\"local settings"\temp\
rmdir /s /q d:\"documents and settings"\%username%\"local settings"\temp\
del C:\"documents and settings"\%username%\"Local Settings"\"temporary internet files"\*.* /f /s /q
del d:\"documents and settings"\%username%\"local settings"\"temporary internet files"\*.* /f /s /q
del c:\"documents and settings"\%username%\"application data"\microsoft\office\recent\*.* /f /s /q
del d:\"documents and settings"\%username%\"application data"\microsoft\office\recent\*.* /f /s /q
rmdir /s /q C:\"documents and settings"\%username%\"local settings"\"temporary internet files"\
rmdir /s /q D:\"documents and settings"\%username%\"local settings"\"temporary internet files"\

