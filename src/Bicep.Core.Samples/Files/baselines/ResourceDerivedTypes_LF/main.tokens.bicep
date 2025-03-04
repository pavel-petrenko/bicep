type foo = resource<'Microsoft.Storage/storageAccounts@2023-01-01'>
//@[00:04) Identifier |type|
//@[05:08) Identifier |foo|
//@[09:10) Assignment |=|
//@[11:19) Identifier |resource|
//@[19:20) LeftChevron |<|
//@[20:66) StringComplete |'Microsoft.Storage/storageAccounts@2023-01-01'|
//@[66:67) RightChevron |>|
//@[67:69) NewLine |\n\n|

type test = {
//@[00:04) Identifier |type|
//@[05:09) Identifier |test|
//@[10:11) Assignment |=|
//@[12:13) LeftBrace |{|
//@[13:14) NewLine |\n|
  resA: resource<'Microsoft.Storage/storageAccounts@2023-01-01'>
//@[02:06) Identifier |resA|
//@[06:07) Colon |:|
//@[08:16) Identifier |resource|
//@[16:17) LeftChevron |<|
//@[17:63) StringComplete |'Microsoft.Storage/storageAccounts@2023-01-01'|
//@[63:64) RightChevron |>|
//@[64:65) NewLine |\n|
  resB: sys.resource<'Microsoft.Storage/storageAccounts@2022-09-01'>
//@[02:06) Identifier |resB|
//@[06:07) Colon |:|
//@[08:11) Identifier |sys|
//@[11:12) Dot |.|
//@[12:20) Identifier |resource|
//@[20:21) LeftChevron |<|
//@[21:67) StringComplete |'Microsoft.Storage/storageAccounts@2022-09-01'|
//@[67:68) RightChevron |>|
//@[68:69) NewLine |\n|
  resC: sys.array
//@[02:06) Identifier |resC|
//@[06:07) Colon |:|
//@[08:11) Identifier |sys|
//@[11:12) Dot |.|
//@[12:17) Identifier |array|
//@[17:18) NewLine |\n|
  resD: sys.resource<'az:Microsoft.Storage/storageAccounts@2022-09-01'>
//@[02:06) Identifier |resD|
//@[06:07) Colon |:|
//@[08:11) Identifier |sys|
//@[11:12) Dot |.|
//@[12:20) Identifier |resource|
//@[20:21) LeftChevron |<|
//@[21:70) StringComplete |'az:Microsoft.Storage/storageAccounts@2022-09-01'|
//@[70:71) RightChevron |>|
//@[71:72) NewLine |\n|
}
//@[00:01) RightBrace |}|
//@[01:03) NewLine |\n\n|

type strangeFormattings = {
//@[00:04) Identifier |type|
//@[05:23) Identifier |strangeFormattings|
//@[24:25) Assignment |=|
//@[26:27) LeftBrace |{|
//@[27:28) NewLine |\n|
  test: resource<
//@[02:06) Identifier |test|
//@[06:07) Colon |:|
//@[08:16) Identifier |resource|
//@[16:17) LeftChevron |<|
//@[17:19) NewLine |\n\n|

  'Astronomer.Astro/organizations@2023-08-01-preview'
//@[02:53) StringComplete |'Astronomer.Astro/organizations@2023-08-01-preview'|
//@[53:55) NewLine |\n\n|

>
//@[00:01) RightChevron |>|
//@[01:02) NewLine |\n|
  test2: resource    <'Microsoft.Storage/storageAccounts@2023-01-01'>
//@[02:07) Identifier |test2|
//@[07:08) Colon |:|
//@[09:17) Identifier |resource|
//@[21:22) LeftChevron |<|
//@[22:68) StringComplete |'Microsoft.Storage/storageAccounts@2023-01-01'|
//@[68:69) RightChevron |>|
//@[69:70) NewLine |\n|
  test3: resource</*    */'Microsoft.Storage/storageAccounts@2023-01-01'/*     */>
//@[02:07) Identifier |test3|
//@[07:08) Colon |:|
//@[09:17) Identifier |resource|
//@[17:18) LeftChevron |<|
//@[26:72) StringComplete |'Microsoft.Storage/storageAccounts@2023-01-01'|
//@[81:82) RightChevron |>|
//@[82:83) NewLine |\n|
}
//@[00:01) RightBrace |}|
//@[01:03) NewLine |\n\n|

@description('I love space(s)')
//@[00:01) At |@|
//@[01:12) Identifier |description|
//@[12:13) LeftParen |(|
//@[13:30) StringComplete |'I love space(s)'|
//@[30:31) RightParen |)|
//@[31:32) NewLine |\n|
type test2 = resource<
//@[00:04) Identifier |type|
//@[05:10) Identifier |test2|
//@[11:12) Assignment |=|
//@[13:21) Identifier |resource|
//@[21:22) LeftChevron |<|
//@[22:24) NewLine |\n\n|

     'Astronomer.Astro/organizations@2023-08-01-preview'
//@[05:56) StringComplete |'Astronomer.Astro/organizations@2023-08-01-preview'|
//@[56:58) NewLine |\n\n|

>
//@[00:01) RightChevron |>|
//@[01:03) NewLine |\n\n|

param bar resource<'Microsoft.Resources/tags@2022-09-01'> = {
//@[00:05) Identifier |param|
//@[06:09) Identifier |bar|
//@[10:18) Identifier |resource|
//@[18:19) LeftChevron |<|
//@[19:56) StringComplete |'Microsoft.Resources/tags@2022-09-01'|
//@[56:57) RightChevron |>|
//@[58:59) Assignment |=|
//@[60:61) LeftBrace |{|
//@[61:62) NewLine |\n|
  name: 'default'
//@[02:06) Identifier |name|
//@[06:07) Colon |:|
//@[08:17) StringComplete |'default'|
//@[17:18) NewLine |\n|
  properties: {
//@[02:12) Identifier |properties|
//@[12:13) Colon |:|
//@[14:15) LeftBrace |{|
//@[15:16) NewLine |\n|
    tags: {
//@[04:08) Identifier |tags|
//@[08:09) Colon |:|
//@[10:11) LeftBrace |{|
//@[11:12) NewLine |\n|
      fizz: 'buzz'
//@[06:10) Identifier |fizz|
//@[10:11) Colon |:|
//@[12:18) StringComplete |'buzz'|
//@[18:19) NewLine |\n|
      snap: 'crackle'
//@[06:10) Identifier |snap|
//@[10:11) Colon |:|
//@[12:21) StringComplete |'crackle'|
//@[21:22) NewLine |\n|
    }
//@[04:05) RightBrace |}|
//@[05:06) NewLine |\n|
  }
//@[02:03) RightBrace |}|
//@[03:04) NewLine |\n|
}
//@[00:01) RightBrace |}|
//@[01:03) NewLine |\n\n|

output baz resource<'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31'> = {
//@[00:06) Identifier |output|
//@[07:10) Identifier |baz|
//@[11:19) Identifier |resource|
//@[19:20) LeftChevron |<|
//@[20:81) StringComplete |'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31'|
//@[81:82) RightChevron |>|
//@[83:84) Assignment |=|
//@[85:86) LeftBrace |{|
//@[86:87) NewLine |\n|
  name: 'myId'
//@[02:06) Identifier |name|
//@[06:07) Colon |:|
//@[08:14) StringComplete |'myId'|
//@[14:15) NewLine |\n|
  location: 'eastus'
//@[02:10) Identifier |location|
//@[10:11) Colon |:|
//@[12:20) StringComplete |'eastus'|
//@[20:21) NewLine |\n|
}
//@[00:01) RightBrace |}|
//@[01:03) NewLine |\n\n|

type storageAccountName = resource<'Microsoft.Storage/storageAccounts@2023-01-01'>.name
//@[00:04) Identifier |type|
//@[05:23) Identifier |storageAccountName|
//@[24:25) Assignment |=|
//@[26:34) Identifier |resource|
//@[34:35) LeftChevron |<|
//@[35:81) StringComplete |'Microsoft.Storage/storageAccounts@2023-01-01'|
//@[81:82) RightChevron |>|
//@[82:83) Dot |.|
//@[83:87) Identifier |name|
//@[87:88) NewLine |\n|
type accessPolicy = resource<'Microsoft.KeyVault/vaults@2022-07-01'>.properties.accessPolicies[*]
//@[00:04) Identifier |type|
//@[05:17) Identifier |accessPolicy|
//@[18:19) Assignment |=|
//@[20:28) Identifier |resource|
//@[28:29) LeftChevron |<|
//@[29:67) StringComplete |'Microsoft.KeyVault/vaults@2022-07-01'|
//@[67:68) RightChevron |>|
//@[68:69) Dot |.|
//@[69:79) Identifier |properties|
//@[79:80) Dot |.|
//@[80:94) Identifier |accessPolicies|
//@[94:95) LeftSquare |[|
//@[95:96) Asterisk |*|
//@[96:97) RightSquare |]|
//@[97:98) NewLine |\n|
type tag = resource<'Microsoft.Resources/tags@2022-09-01'>.properties.tags.*
//@[00:04) Identifier |type|
//@[05:08) Identifier |tag|
//@[09:10) Assignment |=|
//@[11:19) Identifier |resource|
//@[19:20) LeftChevron |<|
//@[20:57) StringComplete |'Microsoft.Resources/tags@2022-09-01'|
//@[57:58) RightChevron |>|
//@[58:59) Dot |.|
//@[59:69) Identifier |properties|
//@[69:70) Dot |.|
//@[70:74) Identifier |tags|
//@[74:75) Dot |.|
//@[75:76) Asterisk |*|
//@[76:77) NewLine |\n|

//@[00:00) EndOfFile ||
