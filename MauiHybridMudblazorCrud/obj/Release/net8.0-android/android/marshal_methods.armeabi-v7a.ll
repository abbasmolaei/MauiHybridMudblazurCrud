; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [157 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [314 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 62
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 145
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 60
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 134
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 159306688, ; 10: System.ComponentModel.Annotations => 0x97ed3c0 => 105
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 76
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 94
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 108
	i32 220171995, ; 14: System.Diagnostics.Debug => 0xd1f8edb => 110
	i32 230752869, ; 15: Microsoft.CSharp.dll => 0xdc10265 => 101
	i32 231814094, ; 16: System.Globalization => 0xdd133ce => 113
	i32 254259026, ; 17: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 317674968, ; 18: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 72
	i32 321963286, ; 20: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 68
	i32 379916513, ; 23: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 120
	i32 395744057, ; 25: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 26: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 104
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 82
	i32 456227837, ; 29: System.Web.HttpUtility.dll => 0x1b317bfd => 147
	i32 459347974, ; 30: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 136
	i32 469710990, ; 31: System.dll => 0x1bff388e => 151
	i32 489220957, ; 32: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 33: System.ObjectModel => 0x1dbae811 => 125
	i32 513247710, ; 34: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 54
	i32 538707440, ; 35: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 36: Microsoft.Extensions.Logging => 0x20216150 => 51
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 132
	i32 571435654, ; 38: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 46
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 80
	i32 627931235, ; 40: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 41: System.Text.Encodings.Web.dll => 0x27787397 => 141
	i32 672442732, ; 42: System.Collections.Concurrent => 0x2814a96c => 102
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 148
	i32 722857257, ; 44: System.Runtime.Loader.dll => 0x2b15ed29 => 135
	i32 748832960, ; 45: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 66
	i32 752882528, ; 46: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x2ce01360 => 69
	i32 759454413, ; 47: System.Net.Requests => 0x2d445acd => 123
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 115
	i32 777317022, ; 49: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 50: Microsoft.Extensions.Options => 0x2f0980eb => 53
	i32 800472933, ; 51: SQLiteNetExtensionsAsync => 0x2fb63f65 => 65
	i32 804008546, ; 52: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 39
	i32 823281589, ; 53: System.Private.Uri.dll => 0x311247b5 => 126
	i32 830298997, ; 54: System.IO.Compression.Brotli => 0x317d5b75 => 114
	i32 869139383, ; 55: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 877678880, ; 56: System.Globalization.dll => 0x34505120 => 113
	i32 880668424, ; 57: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 58: System.ComponentModel.Primitives.dll => 0x35e25008 => 106
	i32 918734561, ; 59: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 60: Newtonsoft.Json => 0x38f24a24 => 62
	i32 961460050, ; 61: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 62: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 975874589, ; 63: System.Xml.XDocument => 0x3a2aaa1d => 150
	i32 990727110, ; 64: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 65: System.Collections.dll => 0x3b2c715c => 104
	i32 999186168, ; 66: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 48
	i32 1012816738, ; 67: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 93
	i32 1017297409, ; 68: SQLitePCLRaw.provider.sqlite3.dll => 0x3ca2ba01 => 71
	i32 1028951442, ; 69: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 73
	i32 1043950537, ; 71: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 72: System.Linq.Expressions.dll => 0x3e444eb4 => 118
	i32 1052210849, ; 73: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 85
	i32 1082857460, ; 74: System.ComponentModel.TypeConverter => 0x408b17f4 => 107
	i32 1084122840, ; 75: Xamarin.Kotlin.StdLib => 0x409e66d8 => 98
	i32 1098259244, ; 76: System => 0x41761b2c => 151
	i32 1108272742, ; 77: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 78: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 79: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 80: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 81: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 44
	i32 1178241025, ; 82: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 90
	i32 1260983243, ; 83: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 84: SQLitePCLRaw.core.dll => 0x4d0585a0 => 67
	i32 1293217323, ; 85: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 81
	i32 1308624726, ; 86: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 87: System.Linq => 0x4eed2679 => 119
	i32 1336711579, ; 88: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1364015309, ; 89: System.IO => 0x514d38cd => 117
	i32 1373134921, ; 90: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 91: Xamarin.AndroidX.SavedState => 0x52114ed3 => 93
	i32 1379779777, ; 92: System.Resources.ResourceManager => 0x523dc4c1 => 131
	i32 1406073936, ; 93: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 77
	i32 1430672901, ; 94: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1454105418, ; 95: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 45
	i32 1457743152, ; 96: System.Runtime.Extensions.dll => 0x56e36530 => 132
	i32 1461004990, ; 97: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 98: System.IO.Compression.dll => 0x57261233 => 115
	i32 1469204771, ; 99: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 74
	i32 1470490898, ; 100: Microsoft.Extensions.Primitives => 0x57a5e912 => 54
	i32 1480492111, ; 101: System.IO.Compression.Brotli.dll => 0x583e844f => 114
	i32 1482732965, ; 102: MauiHybridMudblazorCrud => 0x5860b5a5 => 100
	i32 1521091094, ; 103: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 48
	i32 1526286932, ; 104: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 105: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 143
	i32 1546581739, ; 106: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 39
	i32 1550322496, ; 107: System.Reflection.Extensions.dll => 0x5c680b40 => 129
	i32 1604451928, ; 108: SQLiteNetExtensions => 0x5fa1fe58 => 64
	i32 1622152042, ; 109: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 87
	i32 1622358360, ; 110: System.Dynamic.Runtime => 0x60b33958 => 112
	i32 1624863272, ; 111: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 96
	i32 1636350590, ; 112: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 79
	i32 1639515021, ; 113: System.Net.Http.dll => 0x61b9038d => 121
	i32 1639986890, ; 114: System.Text.RegularExpressions => 0x61c036ca => 143
	i32 1654881142, ; 115: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 38
	i32 1657153582, ; 116: System.Runtime => 0x62c6282e => 137
	i32 1658251792, ; 117: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 97
	i32 1666713512, ; 118: SQLiteNetExtensions.dll => 0x635807a8 => 64
	i32 1677501392, ; 119: System.Net.Primitives.dll => 0x63fca3d0 => 122
	i32 1679769178, ; 120: System.Security.Cryptography => 0x641f3e5a => 138
	i32 1701541528, ; 121: System.Diagnostics.Debug.dll => 0x656b7698 => 110
	i32 1711441057, ; 122: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 68
	i32 1726116996, ; 123: System.Reflection.dll => 0x66e27484 => 130
	i32 1729485958, ; 124: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 75
	i32 1743415430, ; 125: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 126: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 37
	i32 1765942094, ; 127: System.Reflection.Extensions => 0x6942234e => 129
	i32 1766324549, ; 128: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 94
	i32 1770582343, ; 129: Microsoft.Extensions.Logging.dll => 0x6988f147 => 51
	i32 1780572499, ; 130: Mono.Android.Runtime.dll => 0x6a216153 => 155
	i32 1782862114, ; 131: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 132: Xamarin.AndroidX.Fragment => 0x6a96652d => 82
	i32 1793755602, ; 133: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 134: Xamarin.AndroidX.Loader => 0x6bcd3296 => 87
	i32 1813058853, ; 135: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 98
	i32 1813201214, ; 136: Xamarin.Google.Android.Material => 0x6c13413e => 97
	i32 1818569960, ; 137: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 91
	i32 1824175904, ; 138: System.Text.Encoding.Extensions => 0x6cbab720 => 139
	i32 1828688058, ; 139: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 52
	i32 1853025655, ; 140: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 141: System.Linq.Expressions => 0x6ec71a65 => 118
	i32 1875935024, ; 142: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 143: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1900610850, ; 144: System.Resources.ResourceManager.dll => 0x71490522 => 131
	i32 1910275211, ; 145: System.Collections.NonGeneric.dll => 0x71dc7c8b => 103
	i32 1939592360, ; 146: System.Private.Xml.Linq => 0x739bd4a8 => 127
	i32 1953182387, ; 147: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 148: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 40
	i32 2003115576, ; 149: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 150: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 85
	i32 2045470958, ; 151: System.Private.Xml => 0x79eb68ee => 128
	i32 2055257422, ; 152: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2066184531, ; 153: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2072397586, ; 154: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 47
	i32 2079903147, ; 155: System.Runtime.dll => 0x7bf8cdab => 137
	i32 2090495875, ; 156: SQLitePCLRaw.provider.dynamic_cdecl => 0x7c9a6f83 => 69
	i32 2090596640, ; 157: System.Numerics.Vectors => 0x7c9bf920 => 124
	i32 2103459038, ; 158: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 70
	i32 2127167465, ; 159: System.Console => 0x7ec9ffe9 => 109
	i32 2159891885, ; 160: Microsoft.Maui => 0x80bd55ad => 58
	i32 2169148018, ; 161: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 162: Microsoft.Extensions.Options.dll => 0x820d22b3 => 53
	i32 2192057212, ; 163: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 52
	i32 2193016926, ; 164: System.ObjectModel.dll => 0x82b6c85e => 125
	i32 2201107256, ; 165: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 99
	i32 2201231467, ; 166: System.Net.Http => 0x8334206b => 121
	i32 2207618523, ; 167: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 168: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2279755925, ; 169: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 92
	i32 2303942373, ; 170: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 171: System.Private.CoreLib.dll => 0x896b7878 => 153
	i32 2340441535, ; 172: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 133
	i32 2353062107, ; 173: System.Net.Primitives => 0x8c40e0db => 122
	i32 2366048013, ; 174: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 175: System.Xml.ReaderWriter.dll => 0x8d24e767 => 149
	i32 2371007202, ; 176: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 40
	i32 2395872292, ; 177: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 178: System.Web.HttpUtility => 0x8f24faee => 147
	i32 2411328690, ; 179: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 180: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 181: System.Console.dll => 0x912896e5 => 109
	i32 2442556106, ; 182: Microsoft.JSInterop.dll => 0x919672ca => 55
	i32 2454642406, ; 183: System.Text.Encoding.dll => 0x924edee6 => 140
	i32 2465273461, ; 184: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 66
	i32 2471841756, ; 185: netstandard.dll => 0x93554fdc => 152
	i32 2475788418, ; 186: Java.Interop.dll => 0x93918882 => 154
	i32 2480646305, ; 187: Microsoft.Maui.Controls => 0x93dba8a1 => 56
	i32 2503351294, ; 188: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 189: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 190: Microsoft.CSharp => 0x98ba5a04 => 101
	i32 2570120770, ; 191: System.Text.Encodings.Web => 0x9930ee42 => 141
	i32 2576534780, ; 192: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 193: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 139
	i32 2585813321, ; 194: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 36
	i32 2592341985, ; 195: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 44
	i32 2593496499, ; 196: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 197: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 99
	i32 2617129537, ; 198: System.Private.Xml.dll => 0x9bfe3a41 => 128
	i32 2620871830, ; 199: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 79
	i32 2626831493, ; 200: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 201: System.Runtime.Loader => 0x9ec4cf01 => 135
	i32 2664396074, ; 202: System.Xml.XDocument.dll => 0x9ecf752a => 150
	i32 2692077919, ; 203: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 38
	i32 2693849962, ; 204: System.IO.dll => 0xa090e36a => 117
	i32 2715334215, ; 205: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2732626843, ; 206: Xamarin.AndroidX.Activity => 0xa2e0939b => 72
	i32 2737747696, ; 207: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 74
	i32 2740698338, ; 208: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 209: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 210: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 57
	i32 2764765095, ; 211: Microsoft.Maui.dll => 0xa4caf7a7 => 58
	i32 2778768386, ; 212: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 95
	i32 2785988530, ; 213: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 214: Microsoft.Maui.Graphics => 0xa7008e0b => 60
	i32 2810250172, ; 215: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 77
	i32 2820942282, ; 216: MudBlazor.dll => 0xa82429ca => 61
	i32 2853208004, ; 217: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 95
	i32 2861189240, ; 218: Microsoft.Maui.Essentials => 0xaa8a4878 => 59
	i32 2892341533, ; 219: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 37
	i32 2900621748, ; 220: System.Dynamic.Runtime.dll => 0xace3f9b4 => 112
	i32 2901442782, ; 221: System.Reflection => 0xacf080de => 130
	i32 2909740682, ; 222: System.Private.CoreLib => 0xad6f1e8a => 153
	i32 2911054922, ; 223: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 47
	i32 2916838712, ; 224: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 96
	i32 2919462931, ; 225: System.Numerics.Vectors.dll => 0xae037813 => 124
	i32 2959614098, ; 226: System.ComponentModel.dll => 0xb0682092 => 108
	i32 2978675010, ; 227: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 81
	i32 3038032645, ; 228: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 229: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 230: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 88
	i32 3059408633, ; 231: Mono.Android.Runtime => 0xb65adef9 => 155
	i32 3059793426, ; 232: System.ComponentModel.Primitives => 0xb660be12 => 106
	i32 3060069052, ; 233: MudBlazor => 0xb664f2bc => 61
	i32 3075834255, ; 234: System.Threading.Tasks => 0xb755818f => 144
	i32 3178803400, ; 235: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 89
	i32 3220365878, ; 236: System.Threading => 0xbff2e236 => 146
	i32 3258312781, ; 237: Xamarin.AndroidX.CardView => 0xc235e84d => 75
	i32 3280506390, ; 238: System.ComponentModel.Annotations.dll => 0xc3888e16 => 105
	i32 3286872994, ; 239: SQLite-net.dll => 0xc3e9b3a2 => 63
	i32 3289780184, ; 240: MauiHybridMudblazorCrud.dll => 0xc4160fd8 => 100
	i32 3299363146, ; 241: System.Text.Encoding => 0xc4a8494a => 140
	i32 3305363605, ; 242: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 243: System.Net.Requests.dll => 0xc5b097e4 => 123
	i32 3317135071, ; 244: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 80
	i32 3346324047, ; 245: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 90
	i32 3357674450, ; 246: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 247: System.Text.Json => 0xc82afec1 => 142
	i32 3360279109, ; 248: SQLitePCLRaw.core => 0xc849ca45 => 67
	i32 3362522851, ; 249: Xamarin.AndroidX.Core => 0xc86c06e3 => 78
	i32 3366347497, ; 250: Java.Interop => 0xc8a662e9 => 154
	i32 3374999561, ; 251: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 92
	i32 3381016424, ; 252: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 253: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 45
	i32 3428513518, ; 254: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3430777524, ; 255: netstandard => 0xcc7d82b4 => 152
	i32 3458724246, ; 256: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3464190856, ; 257: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 36
	i32 3471940407, ; 258: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 107
	i32 3476120550, ; 259: Mono.Android => 0xcf3163e6 => 156
	i32 3484440000, ; 260: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 261: System.Text.Json.dll => 0xcfbaacae => 142
	i32 3500000672, ; 262: Microsoft.JSInterop => 0xd09dc5a0 => 55
	i32 3509114376, ; 263: System.Xml.Linq => 0xd128d608 => 148
	i32 3521279769, ; 264: SQLitePCLRaw.provider.sqlite3 => 0xd1e27719 => 71
	i32 3580758918, ; 265: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 266: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3592435036, ; 267: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 50
	i32 3608519521, ; 268: System.Linq.dll => 0xd715a361 => 119
	i32 3624195450, ; 269: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 133
	i32 3641597786, ; 270: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3643446276, ; 271: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 272: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 89
	i32 3657292374, ; 273: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 274: Mono.Android.dll => 0xdae8aa5e => 156
	i32 3724971120, ; 275: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 88
	i32 3748608112, ; 276: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 111
	i32 3751619990, ; 277: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 278: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 70
	i32 3776403777, ; 279: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 50
	i32 3786282454, ; 280: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 76
	i32 3792276235, ; 281: System.Collections.NonGeneric => 0xe2098b0b => 103
	i32 3823082795, ; 282: System.Security.Cryptography.dll => 0xe3df9d2b => 138
	i32 3841636137, ; 283: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 284: System.Runtime.InteropServices.dll => 0xe56ef253 => 134
	i32 3876362041, ; 285: SQLite-net => 0xe70c9739 => 63
	i32 3896106733, ; 286: System.Collections.Concurrent.dll => 0xe839deed => 102
	i32 3896760992, ; 287: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 78
	i32 3898971068, ; 288: Microsoft.Extensions.Localization.dll => 0xe86593bc => 49
	i32 3920221145, ; 289: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 290: System.Xml.ReaderWriter => 0xea213423 => 149
	i32 3931092270, ; 291: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 91
	i32 3954195687, ; 292: Microsoft.Extensions.Localization => 0xebb03ce7 => 49
	i32 3955647286, ; 293: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 73
	i32 4025784931, ; 294: System.Memory => 0xeff49a63 => 120
	i32 4046471985, ; 295: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 57
	i32 4068434129, ; 296: System.Private.Xml.Linq.dll => 0xf27f60d1 => 127
	i32 4073602200, ; 297: System.Threading.dll => 0xf2ce3c98 => 146
	i32 4087494849, ; 298: SQLiteNetExtensionsAsync.dll => 0xf3a238c1 => 65
	i32 4091086043, ; 299: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 300: Microsoft.Maui.Essentials.dll => 0xf40add04 => 59
	i32 4100113165, ; 301: System.Private.Uri => 0xf462c30d => 126
	i32 4103439459, ; 302: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 303: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4127667938, ; 304: System.IO.FileSystem.Watcher => 0xf60736e2 => 116
	i32 4150914736, ; 305: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 306: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 116
	i32 4181436372, ; 307: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 136
	i32 4182413190, ; 308: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 86
	i32 4213026141, ; 309: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 111
	i32 4249188766, ; 310: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 311: Microsoft.Maui.Controls.dll => 0xfea12dee => 56
	i32 4292120959, ; 312: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 86
	i32 4294648842 ; 313: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 46
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [314 x i32] [
	i32 0, ; 0
	i32 62, ; 1
	i32 9, ; 2
	i32 145, ; 3
	i32 33, ; 4
	i32 60, ; 5
	i32 17, ; 6
	i32 134, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 105, ; 10
	i32 76, ; 11
	i32 94, ; 12
	i32 108, ; 13
	i32 110, ; 14
	i32 101, ; 15
	i32 113, ; 16
	i32 35, ; 17
	i32 30, ; 18
	i32 72, ; 19
	i32 8, ; 20
	i32 83, ; 21
	i32 68, ; 22
	i32 145, ; 23
	i32 120, ; 24
	i32 34, ; 25
	i32 28, ; 26
	i32 104, ; 27
	i32 82, ; 28
	i32 147, ; 29
	i32 136, ; 30
	i32 151, ; 31
	i32 6, ; 32
	i32 125, ; 33
	i32 54, ; 34
	i32 27, ; 35
	i32 51, ; 36
	i32 132, ; 37
	i32 46, ; 38
	i32 80, ; 39
	i32 19, ; 40
	i32 141, ; 41
	i32 102, ; 42
	i32 148, ; 43
	i32 135, ; 44
	i32 66, ; 45
	i32 69, ; 46
	i32 123, ; 47
	i32 115, ; 48
	i32 25, ; 49
	i32 53, ; 50
	i32 65, ; 51
	i32 39, ; 52
	i32 126, ; 53
	i32 114, ; 54
	i32 10, ; 55
	i32 113, ; 56
	i32 24, ; 57
	i32 106, ; 58
	i32 21, ; 59
	i32 62, ; 60
	i32 14, ; 61
	i32 83, ; 62
	i32 150, ; 63
	i32 23, ; 64
	i32 104, ; 65
	i32 48, ; 66
	i32 93, ; 67
	i32 71, ; 68
	i32 43, ; 69
	i32 73, ; 70
	i32 4, ; 71
	i32 118, ; 72
	i32 85, ; 73
	i32 107, ; 74
	i32 98, ; 75
	i32 151, ; 76
	i32 26, ; 77
	i32 20, ; 78
	i32 16, ; 79
	i32 22, ; 80
	i32 44, ; 81
	i32 90, ; 82
	i32 2, ; 83
	i32 67, ; 84
	i32 81, ; 85
	i32 11, ; 86
	i32 119, ; 87
	i32 31, ; 88
	i32 117, ; 89
	i32 32, ; 90
	i32 93, ; 91
	i32 131, ; 92
	i32 77, ; 93
	i32 0, ; 94
	i32 45, ; 95
	i32 132, ; 96
	i32 6, ; 97
	i32 115, ; 98
	i32 74, ; 99
	i32 54, ; 100
	i32 114, ; 101
	i32 100, ; 102
	i32 48, ; 103
	i32 30, ; 104
	i32 143, ; 105
	i32 39, ; 106
	i32 129, ; 107
	i32 64, ; 108
	i32 87, ; 109
	i32 112, ; 110
	i32 96, ; 111
	i32 79, ; 112
	i32 121, ; 113
	i32 143, ; 114
	i32 38, ; 115
	i32 137, ; 116
	i32 97, ; 117
	i32 64, ; 118
	i32 122, ; 119
	i32 138, ; 120
	i32 110, ; 121
	i32 68, ; 122
	i32 130, ; 123
	i32 75, ; 124
	i32 1, ; 125
	i32 37, ; 126
	i32 129, ; 127
	i32 94, ; 128
	i32 51, ; 129
	i32 155, ; 130
	i32 17, ; 131
	i32 82, ; 132
	i32 9, ; 133
	i32 87, ; 134
	i32 98, ; 135
	i32 97, ; 136
	i32 91, ; 137
	i32 139, ; 138
	i32 52, ; 139
	i32 26, ; 140
	i32 118, ; 141
	i32 8, ; 142
	i32 2, ; 143
	i32 131, ; 144
	i32 103, ; 145
	i32 127, ; 146
	i32 13, ; 147
	i32 40, ; 148
	i32 5, ; 149
	i32 85, ; 150
	i32 128, ; 151
	i32 84, ; 152
	i32 4, ; 153
	i32 47, ; 154
	i32 137, ; 155
	i32 69, ; 156
	i32 124, ; 157
	i32 70, ; 158
	i32 109, ; 159
	i32 58, ; 160
	i32 12, ; 161
	i32 53, ; 162
	i32 52, ; 163
	i32 125, ; 164
	i32 99, ; 165
	i32 121, ; 166
	i32 14, ; 167
	i32 41, ; 168
	i32 92, ; 169
	i32 18, ; 170
	i32 153, ; 171
	i32 133, ; 172
	i32 122, ; 173
	i32 12, ; 174
	i32 149, ; 175
	i32 40, ; 176
	i32 13, ; 177
	i32 147, ; 178
	i32 35, ; 179
	i32 10, ; 180
	i32 109, ; 181
	i32 55, ; 182
	i32 140, ; 183
	i32 66, ; 184
	i32 152, ; 185
	i32 154, ; 186
	i32 56, ; 187
	i32 16, ; 188
	i32 11, ; 189
	i32 101, ; 190
	i32 141, ; 191
	i32 15, ; 192
	i32 139, ; 193
	i32 36, ; 194
	i32 44, ; 195
	i32 20, ; 196
	i32 99, ; 197
	i32 128, ; 198
	i32 79, ; 199
	i32 15, ; 200
	i32 135, ; 201
	i32 150, ; 202
	i32 38, ; 203
	i32 117, ; 204
	i32 144, ; 205
	i32 72, ; 206
	i32 74, ; 207
	i32 1, ; 208
	i32 21, ; 209
	i32 57, ; 210
	i32 58, ; 211
	i32 95, ; 212
	i32 27, ; 213
	i32 60, ; 214
	i32 77, ; 215
	i32 61, ; 216
	i32 95, ; 217
	i32 59, ; 218
	i32 37, ; 219
	i32 112, ; 220
	i32 130, ; 221
	i32 153, ; 222
	i32 47, ; 223
	i32 96, ; 224
	i32 124, ; 225
	i32 108, ; 226
	i32 81, ; 227
	i32 34, ; 228
	i32 7, ; 229
	i32 88, ; 230
	i32 155, ; 231
	i32 106, ; 232
	i32 61, ; 233
	i32 144, ; 234
	i32 89, ; 235
	i32 146, ; 236
	i32 75, ; 237
	i32 105, ; 238
	i32 63, ; 239
	i32 100, ; 240
	i32 140, ; 241
	i32 7, ; 242
	i32 123, ; 243
	i32 80, ; 244
	i32 90, ; 245
	i32 24, ; 246
	i32 142, ; 247
	i32 67, ; 248
	i32 78, ; 249
	i32 154, ; 250
	i32 92, ; 251
	i32 3, ; 252
	i32 45, ; 253
	i32 42, ; 254
	i32 152, ; 255
	i32 22, ; 256
	i32 36, ; 257
	i32 107, ; 258
	i32 156, ; 259
	i32 23, ; 260
	i32 142, ; 261
	i32 55, ; 262
	i32 148, ; 263
	i32 71, ; 264
	i32 31, ; 265
	i32 33, ; 266
	i32 50, ; 267
	i32 119, ; 268
	i32 133, ; 269
	i32 84, ; 270
	i32 28, ; 271
	i32 89, ; 272
	i32 41, ; 273
	i32 156, ; 274
	i32 88, ; 275
	i32 111, ; 276
	i32 3, ; 277
	i32 70, ; 278
	i32 50, ; 279
	i32 76, ; 280
	i32 103, ; 281
	i32 138, ; 282
	i32 43, ; 283
	i32 134, ; 284
	i32 63, ; 285
	i32 102, ; 286
	i32 78, ; 287
	i32 49, ; 288
	i32 19, ; 289
	i32 149, ; 290
	i32 91, ; 291
	i32 49, ; 292
	i32 73, ; 293
	i32 120, ; 294
	i32 57, ; 295
	i32 127, ; 296
	i32 146, ; 297
	i32 65, ; 298
	i32 5, ; 299
	i32 59, ; 300
	i32 126, ; 301
	i32 29, ; 302
	i32 42, ; 303
	i32 116, ; 304
	i32 29, ; 305
	i32 116, ; 306
	i32 136, ; 307
	i32 86, ; 308
	i32 111, ; 309
	i32 18, ; 310
	i32 56, ; 311
	i32 86, ; 312
	i32 46 ; 313
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
