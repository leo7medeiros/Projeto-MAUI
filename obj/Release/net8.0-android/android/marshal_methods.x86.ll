; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [142 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [284 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 54
	i32 42639949, ; 1: System.Threading.Thread => 0x28aa24d => 131
	i32 67008169, ; 2: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 3: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 122
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 99
	i32 230752869, ; 10: Microsoft.CSharp.dll => 0xdc10265 => 90
	i32 246610117, ; 11: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 120
	i32 280992041, ; 12: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 13: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 61
	i32 336156722, ; 15: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 356389973, ; 17: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 18: System.Threading.Thread.dll => 0x16a510e1 => 131
	i32 382590210, ; 19: SkiaSharp.Extended.dll => 0x16cddd02 => 56
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 110
	i32 395744057, ; 21: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 22: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 96
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 459347974, ; 25: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 126
	i32 469710990, ; 26: System.dll => 0x1bff388e => 136
	i32 498788369, ; 27: System.ObjectModel => 0x1dbae811 => 115
	i32 500358224, ; 28: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 29: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 30: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 47
	i32 525008092, ; 31: SkiaSharp.dll => 0x1f4afcdc => 55
	i32 539058512, ; 32: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 592146354, ; 33: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 34: CommunityToolkit.Maui => 0x239cf51b => 37
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 69
	i32 627931235, ; 36: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 630587553, ; 37: SkiaSharp.Extended.Svg.dll => 0x259600a1 => 57
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 92
	i32 688181140, ; 39: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 133
	i32 706645707, ; 41: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 42: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 43: System.Runtime.Loader.dll => 0x2b15ed29 => 123
	i32 759454413, ; 44: System.Net.Requests => 0x2d445acd => 113
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 107
	i32 777317022, ; 46: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 46
	i32 804715423, ; 48: System.Data.Common => 0x2ff6fb9f => 101
	i32 823281589, ; 49: System.Private.Uri.dll => 0x311247b5 => 116
	i32 830298997, ; 50: System.IO.Compression.Brotli => 0x317d5b75 => 106
	i32 904024072, ; 51: System.ComponentModel.Primitives.dll => 0x35e25008 => 97
	i32 926902833, ; 52: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 54
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 975874589, ; 55: System.Xml.XDocument => 0x3a2aaa1d => 135
	i32 992768348, ; 56: System.Collections.dll => 0x3b2c715c => 96
	i32 1012816738, ; 57: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 82
	i32 1019214401, ; 58: System.Drawing => 0x3cbffa41 => 105
	i32 1028951442, ; 59: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 60: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 62
	i32 1036536393, ; 62: System.Drawing.Primitives.dll => 0x3dc84a49 => 104
	i32 1039431970, ; 63: Maui.DataGrid => 0x3df47922 => 35
	i32 1044663988, ; 64: System.Linq.Expressions.dll => 0x3e444eb4 => 108
	i32 1052210849, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1082857460, ; 66: System.ComponentModel.TypeConverter => 0x408b17f4 => 98
	i32 1084122840, ; 67: Xamarin.Kotlin.StdLib => 0x409e66d8 => 87
	i32 1098259244, ; 68: System => 0x41761b2c => 136
	i32 1118262833, ; 69: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1127624469, ; 70: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 45
	i32 1168523401, ; 71: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 79
	i32 1203215381, ; 73: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1221161837, ; 74: MauiAppProject => 0x48c9736d => 89
	i32 1234928153, ; 75: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 76: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 77: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1324164729, ; 78: System.Linq => 0x4eed2679 => 109
	i32 1373134921, ; 79: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 82
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 66
	i32 1408764838, ; 82: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 125
	i32 1430672901, ; 83: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 84: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 85: System.Collections.Immutable.dll => 0x5718a9ef => 93
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 63
	i32 1470490898, ; 88: Microsoft.Extensions.Primitives => 0x57a5e912 => 47
	i32 1479771757, ; 89: System.Collections.Immutable => 0x5833866d => 93
	i32 1480492111, ; 90: System.IO.Compression.Brotli.dll => 0x583e844f => 106
	i32 1493001747, ; 91: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 92: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 93: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 130
	i32 1551623176, ; 94: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 95: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1623212457, ; 96: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 59
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1634654947, ; 98: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 38
	i32 1636350590, ; 99: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 68
	i32 1639515021, ; 100: System.Net.Http.dll => 0x61b9038d => 111
	i32 1639986890, ; 101: System.Text.RegularExpressions => 0x61c036ca => 130
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 127
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1667453763, ; 104: Mopups.dll => 0x63635343 => 53
	i32 1677501392, ; 105: System.Net.Primitives.dll => 0x63fca3d0 => 112
	i32 1679769178, ; 106: System.Security.Cryptography => 0x641f3e5a => 128
	i32 1724472758, ; 107: SkiaSharp.Extended => 0x66c95db6 => 56
	i32 1729485958, ; 108: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1736233607, ; 109: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 110: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 111: System.Diagnostics.TraceSource.dll => 0x69239124 => 103
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 114: Mono.Android.Runtime.dll => 0x6a216153 => 140
	i32 1782862114, ; 115: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1793755602, ; 117: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 118: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813058853, ; 119: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 87
	i32 1813201214, ; 120: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1818569960, ; 121: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 80
	i32 1824175904, ; 122: System.Text.Encoding.Extensions => 0x6cbab720 => 129
	i32 1824722060, ; 123: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 125
	i32 1828688058, ; 124: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1842015223, ; 125: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 126: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 127: System.Linq.Expressions => 0x6ec71a65 => 108
	i32 1870277092, ; 128: System.Reflection.Primitives => 0x6f7a29e4 => 121
	i32 1875935024, ; 129: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 130: System.Collections.NonGeneric.dll => 0x71dc7c8b => 94
	i32 1939592360, ; 131: System.Private.Xml.Linq => 0x739bd4a8 => 117
	i32 1941394000, ; 132: Maui.DataGrid.dll => 0x73b75250 => 35
	i32 1968388702, ; 133: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 1968499395, ; 134: AsyncAwaitBestPractices => 0x7554eac3 => 36
	i32 2003115576, ; 135: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2011961780, ; 136: System.Buffers.dll => 0x77ec19b4 => 91
	i32 2019465201, ; 137: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2025202353, ; 138: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 139: System.Private.Xml => 0x79eb68ee => 118
	i32 2055257422, ; 140: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2066184531, ; 141: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 142: System.Diagnostics.TraceSource => 0x7b6f419e => 103
	i32 2079903147, ; 143: System.Runtime.dll => 0x7bf8cdab => 127
	i32 2090596640, ; 144: System.Numerics.Vectors => 0x7c9bf920 => 114
	i32 2127167465, ; 145: System.Console => 0x7ec9ffe9 => 100
	i32 2142473426, ; 146: System.Collections.Specialized => 0x7fb38cd2 => 95
	i32 2159891885, ; 147: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 148: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 149: Microsoft.Extensions.Options.dll => 0x820d22b3 => 46
	i32 2192057212, ; 150: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 151: System.ObjectModel.dll => 0x82b6c85e => 115
	i32 2201107256, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 88
	i32 2201231467, ; 153: System.Net.Http => 0x8334206b => 111
	i32 2207618523, ; 154: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 155: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 156: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 157: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 81
	i32 2303942373, ; 158: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 159: System.Private.CoreLib.dll => 0x896b7878 => 138
	i32 2353062107, ; 160: System.Net.Primitives => 0x8c40e0db => 112
	i32 2364201794, ; 161: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 60
	i32 2368005991, ; 162: System.Xml.ReaderWriter.dll => 0x8d24e767 => 134
	i32 2371007202, ; 163: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 164: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 165: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 166: System.Console.dll => 0x912896e5 => 100
	i32 2471841756, ; 167: netstandard.dll => 0x93554fdc => 137
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 139
	i32 2480646305, ; 169: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2538310050, ; 170: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 120
	i32 2550873716, ; 171: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 172: Microsoft.CSharp => 0x98ba5a04 => 90
	i32 2585220780, ; 173: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 129
	i32 2593496499, ; 174: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 88
	i32 2616218305, ; 176: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 45
	i32 2617129537, ; 177: System.Private.Xml.dll => 0x9bfe3a41 => 118
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 68
	i32 2625339995, ; 179: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 60
	i32 2626831493, ; 180: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 181: System.Runtime.Loader => 0x9ec4cf01 => 123
	i32 2664396074, ; 182: System.Xml.XDocument.dll => 0x9ecf752a => 135
	i32 2665622720, ; 183: System.Drawing.Primitives => 0x9ee22cc0 => 104
	i32 2676780864, ; 184: System.Data.Common.dll => 0x9f8c6f40 => 101
	i32 2724373263, ; 185: System.Runtime.Numerics.dll => 0xa262a30f => 124
	i32 2732626843, ; 186: Xamarin.AndroidX.Activity => 0xa2e0939b => 61
	i32 2737747696, ; 187: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 63
	i32 2746741125, ; 188: MauiAppProject.dll => 0xa3b7f185 => 89
	i32 2752995522, ; 189: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 190: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 191: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 192: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2785988530, ; 193: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2795602088, ; 194: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 58
	i32 2801831435, ; 195: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2806116107, ; 196: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 197: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 66
	i32 2831556043, ; 198: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 199: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2854551965, ; 200: SkiaSharp.Extended.Svg => 0xaa25019d => 57
	i32 2861189240, ; 201: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 202: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 38
	i32 2909740682, ; 203: System.Private.CoreLib => 0xad6f1e8a => 138
	i32 2912489636, ; 204: SkiaSharp.Views.Android => 0xad9910a4 => 58
	i32 2916838712, ; 205: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 206: System.Numerics.Vectors.dll => 0xae037813 => 114
	i32 2959614098, ; 207: System.ComponentModel.dll => 0xb0682092 => 99
	i32 2978675010, ; 208: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 3038032645, ; 209: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 210: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3059408633, ; 211: Mono.Android.Runtime => 0xb65adef9 => 140
	i32 3059793426, ; 212: System.ComponentModel.Primitives => 0xb660be12 => 97
	i32 3077302341, ; 213: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3159123045, ; 214: System.Reflection.Primitives.dll => 0xbc4c6465 => 121
	i32 3178803400, ; 215: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 78
	i32 3220365878, ; 216: System.Threading => 0xbff2e236 => 132
	i32 3258312781, ; 217: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3305363605, ; 218: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 219: System.Net.Requests.dll => 0xc5b097e4 => 113
	i32 3317135071, ; 220: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 69
	i32 3340387945, ; 221: SkiaSharp => 0xc71a4669 => 55
	i32 3346324047, ; 222: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 79
	i32 3357674450, ; 223: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 224: Xamarin.AndroidX.Core => 0xc86c06e3 => 67
	i32 3366347497, ; 225: Java.Interop => 0xc8a662e9 => 139
	i32 3374999561, ; 226: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 81
	i32 3381016424, ; 227: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 228: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 229: netstandard => 0xcc7d82b4 => 137
	i32 3463511458, ; 230: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 231: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 98
	i32 3473156932, ; 232: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 59
	i32 3476120550, ; 233: Mono.Android => 0xcf3163e6 => 141
	i32 3479583265, ; 234: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 235: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3509114376, ; 236: System.Xml.Linq => 0xd128d608 => 133
	i32 3580758918, ; 237: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 238: System.Linq.dll => 0xd715a361 => 109
	i32 3641597786, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3643446276, ; 240: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 241: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 78
	i32 3657292374, ; 242: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 243: Mono.Android.dll => 0xdae8aa5e => 141
	i32 3697841164, ; 244: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 245: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3748608112, ; 246: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 102
	i32 3786282454, ; 247: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3792276235, ; 248: System.Collections.NonGeneric => 0xe2098b0b => 94
	i32 3793321889, ; 249: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 36
	i32 3802395368, ; 250: System.Collections.Specialized.dll => 0xe2a3f2e8 => 95
	i32 3817368567, ; 251: CommunityToolkit.Maui.dll => 0xe3886bf7 => 37
	i32 3823082795, ; 252: System.Security.Cryptography.dll => 0xe3df9d2b => 128
	i32 3841636137, ; 253: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3849253459, ; 254: System.Runtime.InteropServices.dll => 0xe56ef253 => 122
	i32 3889960447, ; 255: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 256: System.Collections.Concurrent.dll => 0xe839deed => 92
	i32 3896760992, ; 257: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 67
	i32 3928044579, ; 258: System.Xml.ReaderWriter => 0xea213423 => 134
	i32 3931092270, ; 259: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 80
	i32 3955647286, ; 260: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 62
	i32 3980434154, ; 261: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 262: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 263: System.Memory => 0xeff49a63 => 110
	i32 4030748638, ; 264: Mopups => 0xf04057de => 53
	i32 4046471985, ; 265: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4054681211, ; 266: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 119
	i32 4068434129, ; 267: System.Private.Xml.Linq.dll => 0xf27f60d1 => 117
	i32 4073602200, ; 268: System.Threading.dll => 0xf2ce3c98 => 132
	i32 4094352644, ; 269: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4099507663, ; 270: System.Drawing.dll => 0xf45985cf => 105
	i32 4100113165, ; 271: System.Private.Uri => 0xf462c30d => 116
	i32 4102112229, ; 272: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 273: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 274: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4147896353, ; 275: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 119
	i32 4150914736, ; 276: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 277: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 126
	i32 4182413190, ; 278: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4213026141, ; 279: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 102
	i32 4260525087, ; 280: System.Buffers => 0xfdf2741f => 91
	i32 4271975918, ; 281: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274976490, ; 282: System.Runtime.Numerics => 0xfecef6ea => 124
	i32 4292120959 ; 283: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [284 x i32] [
	i32 54, ; 0
	i32 131, ; 1
	i32 33, ; 2
	i32 52, ; 3
	i32 122, ; 4
	i32 65, ; 5
	i32 83, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 99, ; 9
	i32 90, ; 10
	i32 120, ; 11
	i32 2, ; 12
	i32 30, ; 13
	i32 61, ; 14
	i32 15, ; 15
	i32 72, ; 16
	i32 14, ; 17
	i32 131, ; 18
	i32 56, ; 19
	i32 110, ; 20
	i32 34, ; 21
	i32 26, ; 22
	i32 96, ; 23
	i32 71, ; 24
	i32 126, ; 25
	i32 136, ; 26
	i32 115, ; 27
	i32 13, ; 28
	i32 7, ; 29
	i32 47, ; 30
	i32 55, ; 31
	i32 43, ; 32
	i32 21, ; 33
	i32 37, ; 34
	i32 69, ; 35
	i32 19, ; 36
	i32 57, ; 37
	i32 92, ; 38
	i32 1, ; 39
	i32 133, ; 40
	i32 16, ; 41
	i32 4, ; 42
	i32 123, ; 43
	i32 113, ; 44
	i32 107, ; 45
	i32 25, ; 46
	i32 46, ; 47
	i32 101, ; 48
	i32 116, ; 49
	i32 106, ; 50
	i32 97, ; 51
	i32 28, ; 52
	i32 54, ; 53
	i32 72, ; 54
	i32 135, ; 55
	i32 96, ; 56
	i32 82, ; 57
	i32 105, ; 58
	i32 42, ; 59
	i32 3, ; 60
	i32 62, ; 61
	i32 104, ; 62
	i32 35, ; 63
	i32 108, ; 64
	i32 74, ; 65
	i32 98, ; 66
	i32 87, ; 67
	i32 136, ; 68
	i32 16, ; 69
	i32 45, ; 70
	i32 22, ; 71
	i32 79, ; 72
	i32 20, ; 73
	i32 89, ; 74
	i32 18, ; 75
	i32 2, ; 76
	i32 70, ; 77
	i32 109, ; 78
	i32 32, ; 79
	i32 82, ; 80
	i32 66, ; 81
	i32 125, ; 82
	i32 0, ; 83
	i32 6, ; 84
	i32 93, ; 85
	i32 107, ; 86
	i32 63, ; 87
	i32 47, ; 88
	i32 93, ; 89
	i32 106, ; 90
	i32 10, ; 91
	i32 5, ; 92
	i32 130, ; 93
	i32 25, ; 94
	i32 76, ; 95
	i32 59, ; 96
	i32 85, ; 97
	i32 38, ; 98
	i32 68, ; 99
	i32 111, ; 100
	i32 130, ; 101
	i32 127, ; 102
	i32 86, ; 103
	i32 53, ; 104
	i32 112, ; 105
	i32 128, ; 106
	i32 56, ; 107
	i32 64, ; 108
	i32 23, ; 109
	i32 1, ; 110
	i32 103, ; 111
	i32 83, ; 112
	i32 43, ; 113
	i32 140, ; 114
	i32 17, ; 115
	i32 71, ; 116
	i32 9, ; 117
	i32 76, ; 118
	i32 87, ; 119
	i32 86, ; 120
	i32 80, ; 121
	i32 129, ; 122
	i32 125, ; 123
	i32 44, ; 124
	i32 29, ; 125
	i32 26, ; 126
	i32 108, ; 127
	i32 121, ; 128
	i32 8, ; 129
	i32 94, ; 130
	i32 117, ; 131
	i32 35, ; 132
	i32 39, ; 133
	i32 36, ; 134
	i32 5, ; 135
	i32 91, ; 136
	i32 74, ; 137
	i32 0, ; 138
	i32 118, ; 139
	i32 73, ; 140
	i32 4, ; 141
	i32 103, ; 142
	i32 127, ; 143
	i32 114, ; 144
	i32 100, ; 145
	i32 95, ; 146
	i32 50, ; 147
	i32 12, ; 148
	i32 46, ; 149
	i32 44, ; 150
	i32 115, ; 151
	i32 88, ; 152
	i32 111, ; 153
	i32 14, ; 154
	i32 40, ; 155
	i32 8, ; 156
	i32 81, ; 157
	i32 18, ; 158
	i32 138, ; 159
	i32 112, ; 160
	i32 60, ; 161
	i32 134, ; 162
	i32 39, ; 163
	i32 13, ; 164
	i32 10, ; 165
	i32 100, ; 166
	i32 137, ; 167
	i32 139, ; 168
	i32 48, ; 169
	i32 120, ; 170
	i32 11, ; 171
	i32 90, ; 172
	i32 129, ; 173
	i32 20, ; 174
	i32 88, ; 175
	i32 45, ; 176
	i32 118, ; 177
	i32 68, ; 178
	i32 60, ; 179
	i32 15, ; 180
	i32 123, ; 181
	i32 135, ; 182
	i32 104, ; 183
	i32 101, ; 184
	i32 124, ; 185
	i32 61, ; 186
	i32 63, ; 187
	i32 89, ; 188
	i32 21, ; 189
	i32 49, ; 190
	i32 50, ; 191
	i32 84, ; 192
	i32 27, ; 193
	i32 58, ; 194
	i32 52, ; 195
	i32 6, ; 196
	i32 66, ; 197
	i32 19, ; 198
	i32 84, ; 199
	i32 57, ; 200
	i32 51, ; 201
	i32 38, ; 202
	i32 138, ; 203
	i32 58, ; 204
	i32 85, ; 205
	i32 114, ; 206
	i32 99, ; 207
	i32 70, ; 208
	i32 34, ; 209
	i32 77, ; 210
	i32 140, ; 211
	i32 97, ; 212
	i32 12, ; 213
	i32 121, ; 214
	i32 78, ; 215
	i32 132, ; 216
	i32 64, ; 217
	i32 7, ; 218
	i32 113, ; 219
	i32 69, ; 220
	i32 55, ; 221
	i32 79, ; 222
	i32 24, ; 223
	i32 67, ; 224
	i32 139, ; 225
	i32 81, ; 226
	i32 3, ; 227
	i32 41, ; 228
	i32 137, ; 229
	i32 11, ; 230
	i32 98, ; 231
	i32 59, ; 232
	i32 141, ; 233
	i32 24, ; 234
	i32 23, ; 235
	i32 133, ; 236
	i32 31, ; 237
	i32 109, ; 238
	i32 73, ; 239
	i32 28, ; 240
	i32 78, ; 241
	i32 40, ; 242
	i32 141, ; 243
	i32 33, ; 244
	i32 77, ; 245
	i32 102, ; 246
	i32 65, ; 247
	i32 94, ; 248
	i32 36, ; 249
	i32 95, ; 250
	i32 37, ; 251
	i32 128, ; 252
	i32 42, ; 253
	i32 122, ; 254
	i32 32, ; 255
	i32 92, ; 256
	i32 67, ; 257
	i32 134, ; 258
	i32 80, ; 259
	i32 62, ; 260
	i32 27, ; 261
	i32 9, ; 262
	i32 110, ; 263
	i32 53, ; 264
	i32 49, ; 265
	i32 119, ; 266
	i32 117, ; 267
	i32 132, ; 268
	i32 51, ; 269
	i32 105, ; 270
	i32 116, ; 271
	i32 22, ; 272
	i32 17, ; 273
	i32 41, ; 274
	i32 119, ; 275
	i32 29, ; 276
	i32 126, ; 277
	i32 75, ; 278
	i32 102, ; 279
	i32 91, ; 280
	i32 48, ; 281
	i32 124, ; 282
	i32 75 ; 283
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
