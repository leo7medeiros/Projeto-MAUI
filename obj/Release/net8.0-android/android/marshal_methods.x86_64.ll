; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [142 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [284 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 47
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 141
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 51
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 108
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 65
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 82
	i64 308826992458506653, ; 6: SkiaSharp.Extended.dll => 0x4492c836e8aa19d => 56
	i64 545109961164950392, ; 7: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 8: System.Reflection.Primitives => 0x7c6829760de3975 => 121
	i64 670107554435801057, ; 9: SkiaSharp.Extended.Svg.dll => 0x94cb34537739fe1 => 57
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 131
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 99
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 70
	i64 1010599046655515943, ; 14: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 121
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 86
	i64 1121665720830085036, ; 16: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 17: System.Drawing.dll => 0x119be62002c19ebb => 105
	i64 1369545283391376210, ; 18: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 78
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 112
	i64 1486715745332614827, ; 20: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 48
	i64 1513467482682125403, ; 21: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 140
	i64 1537168428375924959, ; 22: System.Threading.Thread.dll => 0x15551e8a954ae0df => 131
	i64 1556147632182429976, ; 23: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 63
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 75
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 54
	i64 1743969030606105336, ; 27: System.Memory.dll => 0x1833d297e88f2af8 => 110
	i64 1767386781656293639, ; 28: System.Private.Uri.dll => 0x188704e9f5582107 => 116
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 62
	i64 1835311033149317475, ; 30: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 82
	i64 1875417405349196092, ; 32: System.Drawing.Primitives => 0x1a06d2319b6c713c => 104
	i64 1881198190668717030, ; 33: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 34: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 49
	i64 1959996714666907089, ; 35: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 74
	i64 1983698669889758782, ; 37: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 38: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 39: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 104
	i64 2133195048986300728, ; 40: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 54
	i64 2200176636225660136, ; 41: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 45
	i64 2262844636196693701, ; 42: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 70
	i64 2287834202362508563, ; 43: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 92
	i64 2302323944321350744, ; 44: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 66
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 127
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 61
	i64 2602673633151553063, ; 49: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 51: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 52: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 86
	i64 3289520064315143713, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 114
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 124
	i64 3344514922410554693, ; 57: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 88
	i64 3414639567687375782, ; 58: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 59
	i64 3429672777697402584, ; 59: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 51
	i64 3494946837667399002, ; 60: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 83
	i64 3551103847008531295, ; 62: System.Private.CoreLib.dll => 0x31480e226177735f => 138
	i64 3567343442040498961, ; 63: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 64: System.Runtime.dll => 0x319037675df7e556 => 127
	i64 3638003163729360188, ; 65: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 66: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 134
	i64 3655542548057982301, ; 67: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 68: netstandard.dll => 0x3393f0ed5c8c5c99 => 137
	i64 3727469159507183293, ; 69: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 81
	i64 3869221888984012293, ; 70: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 71: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 49
	i64 3933965368022646939, ; 72: System.Net.Requests => 0x369840a8bfadc09b => 113
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 110
	i64 4009997192427317104, ; 74: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 126
	i64 4073500526318903918, ; 75: System.Private.Xml.dll => 0x3887fb25779ae26e => 118
	i64 4120493066591692148, ; 76: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 77: System.ComponentModel => 0x39a7562737acb67e => 99
	i64 4187479170553454871, ; 78: System.Linq.Expressions => 0x3a1cea1e912fa117 => 108
	i64 4205801962323029395, ; 79: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 98
	i64 4356591372459378815, ; 80: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4377400047170144581, ; 81: Maui.DataGrid => 0x3cbfa626835ac945 => 35
	i64 4679594760078841447, ; 82: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 83: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 61
	i64 4795410492532947900, ; 84: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 83
	i64 4809057822547766521, ; 85: System.Drawing => 0x42bd349c3145ecf9 => 105
	i64 4853321196694829351, ; 86: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 123
	i64 5103417709280584325, ; 87: System.Collections.Specialized => 0x46d2fb5e161b6285 => 95
	i64 5182934613077526976, ; 88: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 95
	i64 5290786973231294105, ; 89: System.Runtime.Loader => 0x496ca6b869b72699 => 123
	i64 5471532531798518949, ; 90: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 91: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 92: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 106
	i64 5573260873512690141, ; 93: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 128
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 85
	i64 6068057819846744445, ; 95: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6182294023748435638, ; 96: AsyncAwaitBestPractices => 0x55cbeba8ce8bbeb6 => 36
	i64 6200764641006662125, ; 97: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6284145129771520194, ; 98: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 119
	i64 6357457916754632952, ; 99: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6478287442656530074, ; 101: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 102: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 69
	i64 6560151584539558821, ; 103: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 46
	i64 6671798237668743565, ; 104: SkiaSharp => 0x5c96fd260152998d => 55
	i64 6743165466166707109, ; 105: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 106: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 107: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 103
	i64 6814185388980153342, ; 108: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 135
	i64 6876862101832370452, ; 109: System.Xml.Linq => 0x5f6f85a57d108914 => 133
	i64 6894844156784520562, ; 110: System.Numerics.Vectors => 0x5faf683aead1ad72 => 114
	i64 7083547580668757502, ; 111: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 117
	i64 7220009545223068405, ; 112: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 113: System.Linq => 0x64e71ccf51a90a5a => 109
	i64 7314237870106916923, ; 114: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 60
	i64 7377312882064240630, ; 115: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 98
	i64 7488575175965059935, ; 116: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 133
	i64 7489048572193775167, ; 117: System.ObjectModel => 0x67ee71ff6b419e3f => 115
	i64 7654504624184590948, ; 118: System.Net.Http => 0x6a3a4366801b8264 => 111
	i64 7708790323521193081, ; 119: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 120: System.Private.CoreLib => 0x6b0ff375198b9c17 => 138
	i64 7723873813026311384, ; 121: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 59
	i64 7735176074855944702, ; 122: Microsoft.CSharp => 0x6b58dda848e391fe => 90
	i64 7735352534559001595, ; 123: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 87
	i64 7836164640616011524, ; 124: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 63
	i64 7927939710195668715, ; 125: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 58
	i64 8064050204834738623, ; 126: System.Collections.dll => 0x6fe942efa61731bf => 96
	i64 8083354569033831015, ; 127: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 128: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 102
	i64 8167236081217502503, ; 129: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 139
	i64 8185542183669246576, ; 130: System.Collections => 0x7198e33f4794aa70 => 96
	i64 8246048515196606205, ; 131: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 52
	i64 8368701292315763008, ; 132: System.Security.Cryptography => 0x7423997c6fd56140 => 128
	i64 8400357532724379117, ; 133: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 80
	i64 8410671156615598628, ; 134: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 120
	i64 8518412311883997971, ; 135: System.Collections.Immutable => 0x76377add7c28e313 => 93
	i64 8563666267364444763, ; 136: System.Private.Uri => 0x76d841191140ca5b => 116
	i64 8599632406834268464, ; 137: CommunityToolkit.Maui => 0x7758081c784b4930 => 37
	i64 8614108721271900878, ; 138: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 139: Java.Interop => 0x77b654e585b55834 => 139
	i64 8638972117149407195, ; 140: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 90
	i64 8639588376636138208, ; 141: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 79
	i64 8677882282824630478, ; 142: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 143: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 102
	i64 8941376889969657626, ; 144: System.Xml.XDocument => 0x7c1626e87187471a => 135
	i64 9045785047181495996, ; 145: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 146: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 85
	i64 9324707631942237306, ; 147: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 62
	i64 9659729154652888475, ; 148: System.Text.RegularExpressions => 0x860e407c9991dd9b => 130
	i64 9678050649315576968, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 66
	i64 9702891218465930390, ; 150: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 94
	i64 9808709177481450983, ; 151: Mono.Android.dll => 0x881f890734e555e7 => 141
	i64 9956195530459977388, ; 152: Microsoft.Maui => 0x8a2b8315b36616ac => 50
	i64 9991543690424095600, ; 153: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10017511394021241210, ; 154: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 45
	i64 10038780035334861115, ; 155: System.Net.Http.dll => 0x8b50e941206af13b => 111
	i64 10051358222726253779, ; 156: System.Private.Xml => 0x8b7d990c97ccccd3 => 118
	i64 10092835686693276772, ; 157: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 48
	i64 10143853363526200146, ; 158: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 159: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 69
	i64 10245369515835430794, ; 160: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 120
	i64 10364469296367737616, ; 161: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 119
	i64 10406448008575299332, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 88
	i64 10430153318873392755, ; 163: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 67
	i64 10506226065143327199, ; 164: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10785150219063592792, ; 165: System.Net.Primitives => 0x95ac8cfb68830758 => 112
	i64 10880838204485145808, ; 166: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 37
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 168: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 50
	i64 11103970607964515343, ; 169: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 170: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 84
	i64 11220793807500858938, ; 171: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 172: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 46
	i64 11340910727871153756, ; 173: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 68
	i64 11485890710487134646, ; 174: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 122
	i64 11518296021396496455, ; 175: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 84
	i64 11530571088791430846, ; 177: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 178: netstandard => 0xa0f429ca8d1805c9 => 137
	i64 11705530742807338875, ; 179: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11921434729483622790, ; 180: Mopups.dll => 0xa57171b957e05986 => 53
	i64 12102847907131387746, ; 181: System.Buffers => 0xa7f5f40c43256f62 => 91
	i64 12201331334810686224, ; 182: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 126
	i64 12269460666702402136, ; 183: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 93
	i64 12321291134648533416, ; 184: Mopups => 0xaafe050186e541a8 => 53
	i64 12341818387765915815, ; 185: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 38
	i64 12451044538927396471, ; 186: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 71
	i64 12466513435562512481, ; 187: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 76
	i64 12475113361194491050, ; 188: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 189: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 103
	i64 12538491095302438457, ; 190: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 64
	i64 12550732019250633519, ; 191: System.IO.Compression => 0xae2d28465e8e1b2f => 107
	i64 12681088699309157496, ; 192: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 193: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 65
	i64 12708922737231849740, ; 194: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 129
	i64 12823819093633476069, ; 195: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 196: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 47
	i64 13068258254871114833, ; 197: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 125
	i64 13221551921002590604, ; 198: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 199: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 200: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 140
	i64 13381594904270902445, ; 201: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 202: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 87
	i64 13467053111158216594, ; 203: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 204: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 205: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 206: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 81
	i64 13699482914307897092, ; 207: MauiAppProject => 0xbe1e5720a9daf704 => 89
	i64 13717397318615465333, ; 208: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 97
	i64 13755568601956062840, ; 209: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 210: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 211: System.Console.dll => 0xc0a5f3cade5c6774 => 100
	i64 13959074834287824816, ; 212: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 71
	i64 14014210090002754064, ; 213: Maui.DataGrid.dll => 0xc27c79d38e4f2a10 => 35
	i64 14100563506285742564, ; 214: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 215: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 64
	i64 14125464355221830302, ; 216: System.Threading.dll => 0xc407bafdbc707a9e => 132
	i64 14254574811015963973, ; 217: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 129
	i64 14390169238844270433, ; 218: AsyncAwaitBestPractices.dll => 0xc7b426ae2b10e761 => 36
	i64 14461014870687870182, ; 219: System.Net.Requests.dll => 0xc8afd8683afdece6 => 113
	i64 14464374589798375073, ; 220: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 221: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14552901170081803662, ; 222: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 60
	i64 14556034074661724008, ; 223: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 38
	i64 14622043554576106986, ; 224: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 125
	i64 14669215534098758659, ; 225: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14705122255218365489, ; 226: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 227: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 228: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 68
	i64 14892012299694389861, ; 229: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 230: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 231: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 232: System.IO.Compression.dll => 0xcfff1ba06622494c => 107
	i64 15076659072870671916, ; 233: System.ObjectModel.dll => 0xd13b0d8c1620662c => 115
	i64 15111608613780139878, ; 234: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 235: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 106
	i64 15133485256822086103, ; 236: System.Linq.dll => 0xd204f0a9127dd9d7 => 109
	i64 15227001540531775957, ; 237: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 238: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 67
	i64 15391712275433856905, ; 239: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15527772828719725935, ; 240: System.Console => 0xd77dbb1e38cd3d6f => 100
	i64 15536481058354060254, ; 241: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 242: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 75
	i64 15609085926864131306, ; 243: System.dll => 0xd89e9cf3334914ea => 136
	i64 15661133872274321916, ; 244: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 134
	i64 15664356999916475676, ; 245: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 246: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 247: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15894264676341657464, ; 248: MauiAppProject.dll => 0xdc93c582ff622f78 => 89
	i64 16154507427712707110, ; 249: System => 0xe03056ea4e39aa26 => 136
	i64 16288847719894691167, ; 250: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 251: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16324796876805858114, ; 252: SkiaSharp.dll => 0xe28d5444586b6342 => 55
	i64 16649148416072044166, ; 253: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 52
	i64 16677317093839702854, ; 254: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 80
	i64 16856067890322379635, ; 255: System.Data.Common.dll => 0xe9ecc87060889373 => 101
	i64 16890310621557459193, ; 256: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 130
	i64 16942731696432749159, ; 257: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16961387572093531548, ; 258: SkiaSharp.Extended => 0xeb62f421ac5c359c => 56
	i64 16998075588627545693, ; 259: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 78
	i64 17008137082415910100, ; 260: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 94
	i64 17031351772568316411, ; 261: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 77
	i64 17062143951396181894, ; 262: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 97
	i64 17089008752050867324, ; 263: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17089166281881057141, ; 264: SkiaSharp.Extended.Svg => 0xed28ea30eb1a7775 => 57
	i64 17230721278011714856, ; 265: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 117
	i64 17260702271250283638, ; 266: System.Data.Common => 0xef8a5543bba6bc76 => 101
	i64 17342750010158924305, ; 267: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 268: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 269: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 270: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17671790519499593115, ; 271: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 58
	i64 17702523067201099846, ; 272: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 273: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 76
	i64 17710060891934109755, ; 274: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 74
	i64 17712670374920797664, ; 275: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 122
	i64 17777860260071588075, ; 276: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 124
	i64 17838668724098252521, ; 277: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 91
	i64 18025913125965088385, ; 278: System.Threading => 0xfa28e87b91334681 => 132
	i64 18099568558057551825, ; 279: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 280: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 77
	i64 18245806341561545090, ; 281: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 92
	i64 18305135509493619199, ; 282: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 79
	i64 18324163916253801303 ; 283: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [284 x i32] [
	i32 47, ; 0
	i32 141, ; 1
	i32 51, ; 2
	i32 108, ; 3
	i32 65, ; 4
	i32 82, ; 5
	i32 56, ; 6
	i32 7, ; 7
	i32 121, ; 8
	i32 57, ; 9
	i32 131, ; 10
	i32 99, ; 11
	i32 10, ; 12
	i32 70, ; 13
	i32 121, ; 14
	i32 86, ; 15
	i32 18, ; 16
	i32 105, ; 17
	i32 78, ; 18
	i32 112, ; 19
	i32 48, ; 20
	i32 140, ; 21
	i32 131, ; 22
	i32 16, ; 23
	i32 63, ; 24
	i32 75, ; 25
	i32 54, ; 26
	i32 110, ; 27
	i32 116, ; 28
	i32 62, ; 29
	i32 6, ; 30
	i32 82, ; 31
	i32 104, ; 32
	i32 28, ; 33
	i32 49, ; 34
	i32 28, ; 35
	i32 74, ; 36
	i32 2, ; 37
	i32 20, ; 38
	i32 104, ; 39
	i32 54, ; 40
	i32 45, ; 41
	i32 70, ; 42
	i32 92, ; 43
	i32 24, ; 44
	i32 73, ; 45
	i32 66, ; 46
	i32 127, ; 47
	i32 61, ; 48
	i32 27, ; 49
	i32 41, ; 50
	i32 2, ; 51
	i32 7, ; 52
	i32 86, ; 53
	i32 72, ; 54
	i32 114, ; 55
	i32 124, ; 56
	i32 88, ; 57
	i32 59, ; 58
	i32 51, ; 59
	i32 39, ; 60
	i32 83, ; 61
	i32 138, ; 62
	i32 22, ; 63
	i32 127, ; 64
	i32 40, ; 65
	i32 134, ; 66
	i32 39, ; 67
	i32 137, ; 68
	i32 81, ; 69
	i32 43, ; 70
	i32 49, ; 71
	i32 113, ; 72
	i32 110, ; 73
	i32 126, ; 74
	i32 118, ; 75
	i32 33, ; 76
	i32 99, ; 77
	i32 108, ; 78
	i32 98, ; 79
	i32 30, ; 80
	i32 35, ; 81
	i32 0, ; 82
	i32 61, ; 83
	i32 83, ; 84
	i32 105, ; 85
	i32 123, ; 86
	i32 95, ; 87
	i32 95, ; 88
	i32 123, ; 89
	i32 26, ; 90
	i32 29, ; 91
	i32 106, ; 92
	i32 128, ; 93
	i32 85, ; 94
	i32 23, ; 95
	i32 36, ; 96
	i32 23, ; 97
	i32 119, ; 98
	i32 34, ; 99
	i32 73, ; 100
	i32 11, ; 101
	i32 69, ; 102
	i32 46, ; 103
	i32 55, ; 104
	i32 19, ; 105
	i32 22, ; 106
	i32 103, ; 107
	i32 135, ; 108
	i32 133, ; 109
	i32 114, ; 110
	i32 117, ; 111
	i32 26, ; 112
	i32 109, ; 113
	i32 60, ; 114
	i32 98, ; 115
	i32 133, ; 116
	i32 115, ; 117
	i32 111, ; 118
	i32 17, ; 119
	i32 138, ; 120
	i32 59, ; 121
	i32 90, ; 122
	i32 87, ; 123
	i32 63, ; 124
	i32 58, ; 125
	i32 96, ; 126
	i32 72, ; 127
	i32 102, ; 128
	i32 139, ; 129
	i32 96, ; 130
	i32 52, ; 131
	i32 128, ; 132
	i32 80, ; 133
	i32 120, ; 134
	i32 93, ; 135
	i32 116, ; 136
	i32 37, ; 137
	i32 21, ; 138
	i32 139, ; 139
	i32 90, ; 140
	i32 79, ; 141
	i32 21, ; 142
	i32 102, ; 143
	i32 135, ; 144
	i32 31, ; 145
	i32 85, ; 146
	i32 62, ; 147
	i32 130, ; 148
	i32 66, ; 149
	i32 94, ; 150
	i32 141, ; 151
	i32 50, ; 152
	i32 6, ; 153
	i32 45, ; 154
	i32 111, ; 155
	i32 118, ; 156
	i32 48, ; 157
	i32 3, ; 158
	i32 69, ; 159
	i32 120, ; 160
	i32 119, ; 161
	i32 88, ; 162
	i32 67, ; 163
	i32 1, ; 164
	i32 112, ; 165
	i32 37, ; 166
	i32 44, ; 167
	i32 50, ; 168
	i32 12, ; 169
	i32 84, ; 170
	i32 15, ; 171
	i32 46, ; 172
	i32 68, ; 173
	i32 122, ; 174
	i32 13, ; 175
	i32 84, ; 176
	i32 43, ; 177
	i32 137, ; 178
	i32 9, ; 179
	i32 53, ; 180
	i32 91, ; 181
	i32 126, ; 182
	i32 93, ; 183
	i32 53, ; 184
	i32 38, ; 185
	i32 71, ; 186
	i32 76, ; 187
	i32 34, ; 188
	i32 103, ; 189
	i32 64, ; 190
	i32 107, ; 191
	i32 14, ; 192
	i32 65, ; 193
	i32 129, ; 194
	i32 27, ; 195
	i32 47, ; 196
	i32 125, ; 197
	i32 1, ; 198
	i32 15, ; 199
	i32 140, ; 200
	i32 9, ; 201
	i32 87, ; 202
	i32 29, ; 203
	i32 30, ; 204
	i32 13, ; 205
	i32 81, ; 206
	i32 89, ; 207
	i32 97, ; 208
	i32 8, ; 209
	i32 11, ; 210
	i32 100, ; 211
	i32 71, ; 212
	i32 35, ; 213
	i32 3, ; 214
	i32 64, ; 215
	i32 132, ; 216
	i32 129, ; 217
	i32 36, ; 218
	i32 113, ; 219
	i32 24, ; 220
	i32 5, ; 221
	i32 60, ; 222
	i32 38, ; 223
	i32 125, ; 224
	i32 41, ; 225
	i32 16, ; 226
	i32 32, ; 227
	i32 68, ; 228
	i32 33, ; 229
	i32 0, ; 230
	i32 42, ; 231
	i32 107, ; 232
	i32 115, ; 233
	i32 17, ; 234
	i32 106, ; 235
	i32 109, ; 236
	i32 40, ; 237
	i32 67, ; 238
	i32 42, ; 239
	i32 100, ; 240
	i32 4, ; 241
	i32 75, ; 242
	i32 136, ; 243
	i32 134, ; 244
	i32 4, ; 245
	i32 12, ; 246
	i32 5, ; 247
	i32 89, ; 248
	i32 136, ; 249
	i32 18, ; 250
	i32 44, ; 251
	i32 55, ; 252
	i32 52, ; 253
	i32 80, ; 254
	i32 101, ; 255
	i32 130, ; 256
	i32 25, ; 257
	i32 56, ; 258
	i32 78, ; 259
	i32 94, ; 260
	i32 77, ; 261
	i32 97, ; 262
	i32 32, ; 263
	i32 57, ; 264
	i32 117, ; 265
	i32 101, ; 266
	i32 10, ; 267
	i32 25, ; 268
	i32 8, ; 269
	i32 20, ; 270
	i32 58, ; 271
	i32 31, ; 272
	i32 76, ; 273
	i32 74, ; 274
	i32 122, ; 275
	i32 124, ; 276
	i32 91, ; 277
	i32 132, ; 278
	i32 19, ; 279
	i32 77, ; 280
	i32 92, ; 281
	i32 79, ; 282
	i32 14 ; 283
], align 16

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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
