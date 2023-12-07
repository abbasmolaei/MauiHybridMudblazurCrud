; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [157 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [314 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 54
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 156
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 59
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 118
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 76
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 93
	i64 683390398661839228, ; 6: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 46
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 108
	i64 805302231655005164, ; 9: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 870603111519317375, ; 10: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 68
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 81
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 97
	i64 1301485588176585670, ; 13: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 67
	i64 1369545283391376210, ; 14: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 89
	i64 1404195534211153682, ; 15: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 116
	i64 1476839205573959279, ; 16: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 122
	i64 1486715745332614827, ; 17: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 56
	i64 1513467482682125403, ; 18: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 155
	i64 1518315023656898250, ; 19: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 70
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 74
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 86
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 62
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 120
	i64 1767386781656293639, ; 25: System.Private.Uri.dll => 0x188704e9f5582107 => 126
	i64 1776954265264967804, ; 26: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 55
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 73
	i64 1825687700144851180, ; 28: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 133
	i64 1835311033149317475, ; 29: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 93
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1885972578313242730, ; 32: MauiHybridMudblazorCrud.dll => 0x1a2c5211527d086a => 100
	i64 1920760634179481754, ; 33: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 57
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 85
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 62
	i64 2262844636196693701, ; 36: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 81
	i64 2287834202362508563, ; 37: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 102
	i64 2295368378960711535, ; 38: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 39
	i64 2329709569556905518, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2335503487726329082, ; 40: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 141
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 77
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 137
	i64 2547086958574651984, ; 43: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 72
	i64 2602673633151553063, ; 44: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 45: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 42
	i64 2662981627730767622, ; 46: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2781169761569919449, ; 47: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 55
	i64 2895129759130297543, ; 48: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 49: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 97
	i64 3289520064315143713, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 124
	i64 3344514922410554693, ; 52: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 99
	i64 3396143930648122816, ; 53: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 44
	i64 3429672777697402584, ; 54: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 59
	i64 3494946837667399002, ; 55: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 40
	i64 3522470458906976663, ; 56: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 94
	i64 3551103847008531295, ; 57: System.Private.CoreLib.dll => 0x31480e226177735f => 153
	i64 3567343442040498961, ; 58: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 59: System.Runtime.dll => 0x319037675df7e556 => 137
	i64 3638003163729360188, ; 60: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 41
	i64 3647754201059316852, ; 61: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 149
	i64 3655542548057982301, ; 62: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 40
	i64 3716579019761409177, ; 63: netstandard.dll => 0x3393f0ed5c8c5c99 => 152
	i64 3727469159507183293, ; 64: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 92
	i64 3753897248517198740, ; 65: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 38
	i64 3869221888984012293, ; 66: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 51
	i64 3889433610606858880, ; 67: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 47
	i64 3890352374528606784, ; 68: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 57
	i64 3933965368022646939, ; 69: System.Net.Requests => 0x369840a8bfadc09b => 123
	i64 3966267475168208030, ; 70: System.Memory => 0x370b03412596249e => 120
	i64 4009997192427317104, ; 71: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 136
	i64 4070326265757318011, ; 72: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 73: System.Private.Xml.dll => 0x3887fb25779ae26e => 128
	i64 4120493066591692148, ; 74: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 75: System.ComponentModel => 0x39a7562737acb67e => 108
	i64 4187479170553454871, ; 76: System.Linq.Expressions => 0x3a1cea1e912fa117 => 118
	i64 4205801962323029395, ; 77: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 107
	i64 4337444564132831293, ; 78: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 66
	i64 4360412976914417659, ; 79: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4384840217421645357, ; 80: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 36
	i64 4477672992252076438, ; 81: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 147
	i64 4672453897036726049, ; 82: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 116
	i64 4743821336939966868, ; 83: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 105
	i64 4794310189461587505, ; 84: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 72
	i64 4795410492532947900, ; 85: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 94
	i64 4853321196694829351, ; 86: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 135
	i64 4871824391508510238, ; 87: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 88: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5081566143765835342, ; 89: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 131
	i64 5099468265966638712, ; 90: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 131
	i64 5197073077358930460, ; 91: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 37
	i64 5290786973231294105, ; 92: System.Runtime.Loader => 0x496ca6b869b72699 => 135
	i64 5423376490970181369, ; 93: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 133
	i64 5446034149219586269, ; 94: System.Diagnostics.Debug => 0x4b94333452e150dd => 110
	i64 5471532531798518949, ; 95: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 96: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 97: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 114
	i64 5573260873512690141, ; 98: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 138
	i64 5692067934154308417, ; 99: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 96
	i64 5741990095351817038, ; 100: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 50
	i64 6183170893902868313, ; 101: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 66
	i64 6200764641006662125, ; 102: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 103: System.Text.Json.dll => 0x565a67a0ffe264a7 => 142
	i64 6252756117335416132, ; 104: SQLiteNetExtensionsAsync.dll => 0x56c6408f68ed9d44 => 65
	i64 6300676701234028427, ; 105: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 106: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 107: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6471714727257221498, ; 108: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 109: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 110: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 80
	i64 6560151584539558821, ; 111: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 53
	i64 6743165466166707109, ; 112: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6814185388980153342, ; 113: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 150
	i64 6876862101832370452, ; 114: System.Xml.Linq => 0x5f6f85a57d108914 => 148
	i64 6894844156784520562, ; 115: System.Numerics.Vectors => 0x5faf683aead1ad72 => 124
	i64 6920570528939222495, ; 116: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 38
	i64 6999232271162345813, ; 117: SQLiteNetExtensions => 0x612244aac7150955 => 64
	i64 7083547580668757502, ; 118: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 127
	i64 7198443421380600601, ; 119: SQLitePCLRaw.provider.dynamic_cdecl.dll => 0x63e602271b236319 => 69
	i64 7270811800166795866, ; 120: System.Linq => 0x64e71ccf51a90a5a => 119
	i64 7338192458477945005, ; 121: System.Reflection => 0x65d67f295d0740ad => 130
	i64 7377312882064240630, ; 122: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 107
	i64 7488575175965059935, ; 123: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 148
	i64 7489048572193775167, ; 124: System.ObjectModel => 0x67ee71ff6b419e3f => 125
	i64 7547171332664898270, ; 125: SQLiteNetExtensions.dll => 0x68bcf0572680b2de => 64
	i64 7654504624184590948, ; 126: System.Net.Http => 0x6a3a4366801b8264 => 121
	i64 7714652370974252055, ; 127: System.Private.CoreLib => 0x6b0ff375198b9c17 => 153
	i64 7735176074855944702, ; 128: Microsoft.CSharp => 0x6b58dda848e391fe => 101
	i64 7735352534559001595, ; 129: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 98
	i64 7742555799473854801, ; 130: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 131: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 74
	i64 7939716343021325499, ; 132: MudBlazor.dll => 0x6e2f89f293264cbb => 61
	i64 7975724199463739455, ; 133: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8014722069583580780, ; 134: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 36
	i64 8064050204834738623, ; 135: System.Collections.dll => 0x6fe942efa61731bf => 104
	i64 8083354569033831015, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8087206902342787202, ; 137: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 111
	i64 8108129031893776750, ; 138: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8113615946733131500, ; 139: System.Reflection.Extensions => 0x70995ab73cf916ec => 129
	i64 8167236081217502503, ; 140: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 154
	i64 8185542183669246576, ; 141: System.Collections => 0x7198e33f4794aa70 => 104
	i64 8246048515196606205, ; 142: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 60
	i64 8290740647658429042, ; 143: System.Runtime.Extensions => 0x730ea0b15c929a72 => 132
	i64 8368701292315763008, ; 144: System.Security.Cryptography => 0x7423997c6fd56140 => 138
	i64 8386351099740279196, ; 145: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 146: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 91
	i64 8563666267364444763, ; 147: System.Private.Uri => 0x76d841191140ca5b => 126
	i64 8626175481042262068, ; 148: Java.Interop => 0x77b654e585b55834 => 154
	i64 8638972117149407195, ; 149: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 101
	i64 8639588376636138208, ; 150: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 90
	i64 8677882282824630478, ; 151: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 152: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 111
	i64 8941376889969657626, ; 153: System.Xml.XDocument => 0x7c1626e87187471a => 150
	i64 9045785047181495996, ; 154: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 155: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 96
	i64 9324707631942237306, ; 156: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 73
	i64 9363564275759486853, ; 157: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 158: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9576876903876705357, ; 159: SQLitePCLRaw.provider.sqlite3 => 0x84e7e6cdb936bc4d => 71
	i64 9584643793929893533, ; 160: System.IO.dll => 0x85037ebfbbd7f69d => 117
	i64 9659729154652888475, ; 161: System.Text.RegularExpressions => 0x860e407c9991dd9b => 143
	i64 9678050649315576968, ; 162: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 77
	i64 9702891218465930390, ; 163: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 103
	i64 9773637193738963987, ; 164: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 165: Mono.Android.dll => 0x881f890734e555e7 => 156
	i64 9956195530459977388, ; 166: Microsoft.Maui => 0x8a2b8315b36616ac => 58
	i64 10038780035334861115, ; 167: System.Net.Http.dll => 0x8b50e941206af13b => 121
	i64 10051358222726253779, ; 168: System.Private.Xml => 0x8b7d990c97ccccd3 => 128
	i64 10092835686693276772, ; 169: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 56
	i64 10143853363526200146, ; 170: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 171: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 172: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 80
	i64 10360651442923773544, ; 173: System.Text.Encoding => 0x8fc86d98211c1e68 => 140
	i64 10406448008575299332, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 99
	i64 10430153318873392755, ; 175: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 78
	i64 10506226065143327199, ; 176: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10566960649245365243, ; 177: System.Globalization.dll => 0x92a562b96dcd13fb => 113
	i64 10714184849103829812, ; 178: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 132
	i64 10734191584620811116, ; 179: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 46
	i64 10761706286639228993, ; 180: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 181: System.Net.Primitives => 0x95ac8cfb68830758 => 122
	i64 11002576679268595294, ; 182: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 52
	i64 11009005086950030778, ; 183: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 58
	i64 11051904132540108364, ; 184: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 45
	i64 11103970607964515343, ; 185: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11114392999512790850, ; 186: SQLitePCLRaw.provider.sqlite3.dll => 0x9a3e418be60c5742 => 71
	i64 11156122287428000958, ; 187: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 188: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 189: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 95
	i64 11218356222449480316, ; 190: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 35
	i64 11220793807500858938, ; 191: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 192: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 53
	i64 11340910727871153756, ; 193: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 79
	i64 11485890710487134646, ; 194: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 134
	i64 11518296021396496455, ; 195: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 196: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 95
	i64 11530571088791430846, ; 197: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 51
	i64 11597940890313164233, ; 198: netstandard => 0xa0f429ca8d1805c9 => 152
	i64 11739066727115742305, ; 199: SQLite-net.dll => 0xa2e98afdf8575c61 => 63
	i64 11743665907891708234, ; 200: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11806260347154423189, ; 201: SQLite-net => 0xa3d8433bc5eb5d95 => 63
	i64 11855031688536399763, ; 202: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12048689113179125827, ; 203: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 47
	i64 12058074296353848905, ; 204: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 48
	i64 12123043025855404482, ; 205: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 129
	i64 12145679461940342714, ; 206: System.Text.Json => 0xa88e1f1ebcb62fba => 142
	i64 12201331334810686224, ; 207: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 136
	i64 12279246230491828964, ; 208: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 70
	i64 12310909314810916455, ; 209: Microsoft.Extensions.Localization.dll => 0xaad922cbbb5a2e67 => 49
	i64 12451044538927396471, ; 210: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 82
	i64 12466513435562512481, ; 211: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 87
	i64 12475113361194491050, ; 212: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12538491095302438457, ; 213: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 75
	i64 12550732019250633519, ; 214: System.IO.Compression => 0xae2d28465e8e1b2f => 115
	i64 12700543734426720211, ; 215: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 76
	i64 12708238894395270091, ; 216: System.IO => 0xb05cbbf17d3ba3cb => 117
	i64 12708922737231849740, ; 217: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 139
	i64 12843321153144804894, ; 218: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 54
	i64 12989346753972519995, ; 219: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13003699287675270979, ; 220: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 39
	i64 13005833372463390146, ; 221: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13343850469010654401, ; 222: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 155
	i64 13381594904270902445, ; 223: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 224: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 98
	i64 13540124433173649601, ; 225: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13550417756503177631, ; 226: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 44
	i64 13572454107664307259, ; 227: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 92
	i64 13713329104121190199, ; 228: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 112
	i64 13717397318615465333, ; 229: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 106
	i64 13802825973146328710, ; 230: SQLiteNetExtensionsAsync => 0xbf8d7d1791ec1e86 => 65
	i64 13881769479078963060, ; 231: System.Console.dll => 0xc0a5f3cade5c6774 => 109
	i64 13959074834287824816, ; 232: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 82
	i64 14124974489674258913, ; 233: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 75
	i64 14125464355221830302, ; 234: System.Threading.dll => 0xc407bafdbc707a9e => 146
	i64 14254574811015963973, ; 235: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 139
	i64 14286649581274246170, ; 236: SQLitePCLRaw.provider.dynamic_cdecl => 0xc6446019aa55ac1a => 69
	i64 14327695147300244862, ; 237: System.Reflection.dll => 0xc6d632d338eb4d7e => 130
	i64 14349907877893689639, ; 238: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 239: System.Net.Requests.dll => 0xc8afd8683afdece6 => 123
	i64 14464374589798375073, ; 240: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 241: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14551742072151931844, ; 242: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 141
	i64 14610046442689856844, ; 243: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14669215534098758659, ; 244: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 42
	i64 14690985099581930927, ; 245: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 147
	i64 14705122255218365489, ; 246: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 247: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 248: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 249: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 79
	i64 14904040806490515477, ; 250: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 251: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 43
	i64 14987728460634540364, ; 252: System.IO.Compression.dll => 0xcfff1ba06622494c => 115
	i64 15076659072870671916, ; 253: System.ObjectModel.dll => 0xd13b0d8c1620662c => 125
	i64 15111608613780139878, ; 254: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 255: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 114
	i64 15133485256822086103, ; 256: System.Linq.dll => 0xd204f0a9127dd9d7 => 119
	i64 15203009853192377507, ; 257: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 258: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 41
	i64 15234786388537674379, ; 259: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 112
	i64 15370028218478381000, ; 260: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 50
	i64 15370334346939861994, ; 261: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 78
	i64 15391712275433856905, ; 262: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 43
	i64 15427448221306938193, ; 263: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 37
	i64 15481710163200268842, ; 264: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 45
	i64 15526743539506359484, ; 265: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 140
	i64 15527772828719725935, ; 266: System.Console => 0xd77dbb1e38cd3d6f => 109
	i64 15536481058354060254, ; 267: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 268: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 86
	i64 15609085926864131306, ; 269: System.dll => 0xd89e9cf3334914ea => 151
	i64 15661133872274321916, ; 270: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 149
	i64 15735700225633954557, ; 271: Microsoft.Extensions.Localization => 0xda606ffbe0f22afd => 49
	i64 15783653065526199428, ; 272: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15817206913877585035, ; 273: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 16056281320585338352, ; 274: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 275: System => 0xe03056ea4e39aa26 => 151
	i64 16288847719894691167, ; 276: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 277: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 52
	i64 16649148416072044166, ; 278: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 60
	i64 16677317093839702854, ; 279: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 91
	i64 16755018182064898362, ; 280: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 67
	i64 16803648858859583026, ; 281: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16890310621557459193, ; 282: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 143
	i64 16942731696432749159, ; 283: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16970914069587152703, ; 284: MauiHybridMudblazorCrud => 0xeb84cc6e376bcf3f => 100
	i64 16998075588627545693, ; 285: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 89
	i64 17008137082415910100, ; 286: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 103
	i64 17031351772568316411, ; 287: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 88
	i64 17062143951396181894, ; 288: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 106
	i64 17079998892748052666, ; 289: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 35
	i64 17187273293601214786, ; 290: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 105
	i64 17203614576212522419, ; 291: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17205988430934219272, ; 292: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 48
	i64 17230721278011714856, ; 293: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 127
	i64 17310278548634113468, ; 294: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 295: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 296: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 297: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17627500474728259406, ; 298: System.Globalization => 0xf4a176498a351f4e => 113
	i64 17685921127322830888, ; 299: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 110
	i64 17704177640604968747, ; 300: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 87
	i64 17710060891934109755, ; 301: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 85
	i64 17712670374920797664, ; 302: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 134
	i64 17827813215687577648, ; 303: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 304: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 305: System.Threading => 0xfa28e87b91334681 => 146
	i64 18096026207707417514, ; 306: MudBlazor => 0xfb21fff5848f4baa => 61
	i64 18121036031235206392, ; 307: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 88
	i64 18245806341561545090, ; 308: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 102
	i64 18305135509493619199, ; 309: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 90
	i64 18324163916253801303, ; 310: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 311: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786, ; 312: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
	i64 18370042311372477656 ; 313: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 68
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [314 x i32] [
	i32 54, ; 0
	i32 156, ; 1
	i32 59, ; 2
	i32 118, ; 3
	i32 76, ; 4
	i32 93, ; 5
	i32 46, ; 6
	i32 145, ; 7
	i32 108, ; 8
	i32 12, ; 9
	i32 68, ; 10
	i32 81, ; 11
	i32 97, ; 12
	i32 67, ; 13
	i32 89, ; 14
	i32 116, ; 15
	i32 122, ; 16
	i32 56, ; 17
	i32 155, ; 18
	i32 70, ; 19
	i32 145, ; 20
	i32 74, ; 21
	i32 86, ; 22
	i32 62, ; 23
	i32 120, ; 24
	i32 126, ; 25
	i32 55, ; 26
	i32 73, ; 27
	i32 133, ; 28
	i32 6, ; 29
	i32 93, ; 30
	i32 28, ; 31
	i32 100, ; 32
	i32 57, ; 33
	i32 85, ; 34
	i32 62, ; 35
	i32 81, ; 36
	i32 102, ; 37
	i32 39, ; 38
	i32 84, ; 39
	i32 141, ; 40
	i32 77, ; 41
	i32 137, ; 42
	i32 72, ; 43
	i32 27, ; 44
	i32 42, ; 45
	i32 2, ; 46
	i32 55, ; 47
	i32 7, ; 48
	i32 97, ; 49
	i32 83, ; 50
	i32 124, ; 51
	i32 99, ; 52
	i32 44, ; 53
	i32 59, ; 54
	i32 40, ; 55
	i32 94, ; 56
	i32 153, ; 57
	i32 22, ; 58
	i32 137, ; 59
	i32 41, ; 60
	i32 149, ; 61
	i32 40, ; 62
	i32 152, ; 63
	i32 92, ; 64
	i32 38, ; 65
	i32 51, ; 66
	i32 47, ; 67
	i32 57, ; 68
	i32 123, ; 69
	i32 120, ; 70
	i32 136, ; 71
	i32 3, ; 72
	i32 128, ; 73
	i32 33, ; 74
	i32 108, ; 75
	i32 118, ; 76
	i32 107, ; 77
	i32 66, ; 78
	i32 28, ; 79
	i32 36, ; 80
	i32 147, ; 81
	i32 116, ; 82
	i32 105, ; 83
	i32 72, ; 84
	i32 94, ; 85
	i32 135, ; 86
	i32 18, ; 87
	i32 26, ; 88
	i32 131, ; 89
	i32 131, ; 90
	i32 37, ; 91
	i32 135, ; 92
	i32 133, ; 93
	i32 110, ; 94
	i32 26, ; 95
	i32 29, ; 96
	i32 114, ; 97
	i32 138, ; 98
	i32 96, ; 99
	i32 50, ; 100
	i32 66, ; 101
	i32 23, ; 102
	i32 142, ; 103
	i32 65, ; 104
	i32 6, ; 105
	i32 34, ; 106
	i32 84, ; 107
	i32 7, ; 108
	i32 11, ; 109
	i32 80, ; 110
	i32 53, ; 111
	i32 19, ; 112
	i32 150, ; 113
	i32 148, ; 114
	i32 124, ; 115
	i32 38, ; 116
	i32 64, ; 117
	i32 127, ; 118
	i32 69, ; 119
	i32 119, ; 120
	i32 130, ; 121
	i32 107, ; 122
	i32 148, ; 123
	i32 125, ; 124
	i32 64, ; 125
	i32 121, ; 126
	i32 153, ; 127
	i32 101, ; 128
	i32 98, ; 129
	i32 14, ; 130
	i32 74, ; 131
	i32 61, ; 132
	i32 25, ; 133
	i32 36, ; 134
	i32 104, ; 135
	i32 83, ; 136
	i32 111, ; 137
	i32 16, ; 138
	i32 129, ; 139
	i32 154, ; 140
	i32 104, ; 141
	i32 60, ; 142
	i32 132, ; 143
	i32 138, ; 144
	i32 31, ; 145
	i32 91, ; 146
	i32 126, ; 147
	i32 154, ; 148
	i32 101, ; 149
	i32 90, ; 150
	i32 21, ; 151
	i32 111, ; 152
	i32 150, ; 153
	i32 31, ; 154
	i32 96, ; 155
	i32 73, ; 156
	i32 5, ; 157
	i32 29, ; 158
	i32 71, ; 159
	i32 117, ; 160
	i32 143, ; 161
	i32 77, ; 162
	i32 103, ; 163
	i32 1, ; 164
	i32 156, ; 165
	i32 58, ; 166
	i32 121, ; 167
	i32 128, ; 168
	i32 56, ; 169
	i32 3, ; 170
	i32 19, ; 171
	i32 80, ; 172
	i32 140, ; 173
	i32 99, ; 174
	i32 78, ; 175
	i32 1, ; 176
	i32 113, ; 177
	i32 132, ; 178
	i32 46, ; 179
	i32 33, ; 180
	i32 122, ; 181
	i32 52, ; 182
	i32 58, ; 183
	i32 45, ; 184
	i32 12, ; 185
	i32 71, ; 186
	i32 27, ; 187
	i32 8, ; 188
	i32 95, ; 189
	i32 35, ; 190
	i32 15, ; 191
	i32 53, ; 192
	i32 79, ; 193
	i32 134, ; 194
	i32 13, ; 195
	i32 95, ; 196
	i32 51, ; 197
	i32 152, ; 198
	i32 63, ; 199
	i32 144, ; 200
	i32 63, ; 201
	i32 30, ; 202
	i32 47, ; 203
	i32 48, ; 204
	i32 129, ; 205
	i32 142, ; 206
	i32 136, ; 207
	i32 70, ; 208
	i32 49, ; 209
	i32 82, ; 210
	i32 87, ; 211
	i32 34, ; 212
	i32 75, ; 213
	i32 115, ; 214
	i32 76, ; 215
	i32 117, ; 216
	i32 139, ; 217
	i32 54, ; 218
	i32 0, ; 219
	i32 39, ; 220
	i32 21, ; 221
	i32 155, ; 222
	i32 9, ; 223
	i32 98, ; 224
	i32 30, ; 225
	i32 44, ; 226
	i32 92, ; 227
	i32 112, ; 228
	i32 106, ; 229
	i32 65, ; 230
	i32 109, ; 231
	i32 82, ; 232
	i32 75, ; 233
	i32 146, ; 234
	i32 139, ; 235
	i32 69, ; 236
	i32 130, ; 237
	i32 23, ; 238
	i32 123, ; 239
	i32 24, ; 240
	i32 32, ; 241
	i32 141, ; 242
	i32 2, ; 243
	i32 42, ; 244
	i32 147, ; 245
	i32 16, ; 246
	i32 15, ; 247
	i32 32, ; 248
	i32 79, ; 249
	i32 0, ; 250
	i32 43, ; 251
	i32 115, ; 252
	i32 125, ; 253
	i32 17, ; 254
	i32 114, ; 255
	i32 119, ; 256
	i32 22, ; 257
	i32 41, ; 258
	i32 112, ; 259
	i32 50, ; 260
	i32 78, ; 261
	i32 43, ; 262
	i32 37, ; 263
	i32 45, ; 264
	i32 140, ; 265
	i32 109, ; 266
	i32 4, ; 267
	i32 86, ; 268
	i32 151, ; 269
	i32 149, ; 270
	i32 49, ; 271
	i32 5, ; 272
	i32 144, ; 273
	i32 24, ; 274
	i32 151, ; 275
	i32 18, ; 276
	i32 52, ; 277
	i32 60, ; 278
	i32 91, ; 279
	i32 67, ; 280
	i32 17, ; 281
	i32 143, ; 282
	i32 25, ; 283
	i32 100, ; 284
	i32 89, ; 285
	i32 103, ; 286
	i32 88, ; 287
	i32 106, ; 288
	i32 35, ; 289
	i32 105, ; 290
	i32 20, ; 291
	i32 48, ; 292
	i32 127, ; 293
	i32 10, ; 294
	i32 10, ; 295
	i32 8, ; 296
	i32 20, ; 297
	i32 113, ; 298
	i32 110, ; 299
	i32 87, ; 300
	i32 85, ; 301
	i32 134, ; 302
	i32 11, ; 303
	i32 4, ; 304
	i32 146, ; 305
	i32 61, ; 306
	i32 88, ; 307
	i32 102, ; 308
	i32 90, ; 309
	i32 14, ; 310
	i32 13, ; 311
	i32 9, ; 312
	i32 68 ; 313
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
