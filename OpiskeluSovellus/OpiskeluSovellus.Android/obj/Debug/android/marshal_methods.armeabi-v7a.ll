; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i32] [
	i32 15428812, ; 0: Json.Net.dll => 0xeb6ccc => 16
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 111
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 141
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 55
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 136
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 125
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 125
	i32 122350210, ; 7: System.Threading.Channels.dll => 0x74aea82 => 79
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 92
	i32 176714968, ; 9: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 39
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 126
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 90
	i32 221063263, ; 12: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 24
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 106
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 148
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 95
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 110
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 104
	i32 289138619, ; 19: Json.Net => 0x113be7bb => 16
	i32 300686228, ; 20: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 17
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 82
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 72
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 108
	i32 348048101, ; 24: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 25
	i32 384051609, ; 25: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 31
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 70
	i32 414356665, ; 27: OpiskeluSovellus.Android => 0x18b294b9 => 0
	i32 417611542, ; 28: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 38
	i32 441335492, ; 29: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 94
	i32 442521989, ; 30: Xamarin.Essentials => 0x1a605985 => 135
	i32 442565967, ; 31: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 32: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 103
	i32 454207544, ; 33: Syncfusion.SfSchedule.XForms.Android.dll => 0x1b12a838 => 63
	i32 458494020, ; 34: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 34
	i32 465846621, ; 35: mscorlib => 0x1bc4415d => 54
	i32 469710990, ; 36: System.dll => 0x1bff388e => 68
	i32 476646585, ; 37: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 104
	i32 481455486, ; 38: Syncfusion.SfSchedule.XForms => 0x1cb26d7e => 64
	i32 486930444, ; 39: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 115
	i32 490002678, ; 40: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 22
	i32 501000162, ; 41: Prism.dll => 0x1ddca7e2 => 57
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 51
	i32 526420162, ; 43: System.Transactions.dll => 0x1f6088c2 => 143
	i32 539058512, ; 44: Microsoft.Extensions.Logging => 0x20216150 => 48
	i32 545304856, ; 45: System.Runtime.Extensions => 0x2080b118 => 5
	i32 548916678, ; 46: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 40
	i32 605376203, ; 47: System.IO.Compression.FileSystem => 0x24154ecb => 146
	i32 627609679, ; 48: Xamarin.AndroidX.CustomView => 0x2568904f => 99
	i32 662205335, ; 49: System.Text.Encodings.Web.dll => 0x27787397 => 77
	i32 663517072, ; 50: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 131
	i32 666292255, ; 51: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 87
	i32 690569205, ; 52: System.Xml.Linq.dll => 0x29293ff5 => 81
	i32 699345723, ; 53: System.Reflection.Emit => 0x29af2b3b => 151
	i32 719061231, ; 54: Syncfusion.Core.XForms.dll => 0x2adc00ef => 61
	i32 724146010, ; 55: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 19
	i32 775507847, ; 56: System.IO.Compression => 0x2e394f87 => 145
	i32 789151979, ; 57: Microsoft.Extensions.Options => 0x2f0980eb => 50
	i32 809851609, ; 58: System.Drawing.Common.dll => 0x30455ad9 => 9
	i32 832711436, ; 59: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 37
	i32 843511501, ; 60: Xamarin.AndroidX.Print => 0x3246f6cd => 122
	i32 877678880, ; 61: System.Globalization.dll => 0x34505120 => 8
	i32 888076676, ; 62: IdentityModel.OidcClient.dll => 0x34eef984 => 14
	i32 928116545, ; 63: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 141
	i32 955402788, ; 64: Newtonsoft.Json => 0x38f24a24 => 55
	i32 967690846, ; 65: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 108
	i32 974778368, ; 66: FormsViewGroup.dll => 0x3a19f000 => 12
	i32 992768348, ; 67: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 68: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 124
	i32 1028951442, ; 69: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 86
	i32 1042160112, ; 71: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 138
	i32 1052210849, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 112
	i32 1058641855, ; 73: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 25
	i32 1098259244, ; 74: System => 0x41761b2c => 68
	i32 1110309514, ; 75: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 46
	i32 1112354281, ; 76: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 17
	i32 1173126369, ; 77: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 45
	i32 1175144683, ; 78: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 129
	i32 1178241025, ; 79: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 119
	i32 1204270330, ; 80: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 87
	i32 1220193633, ; 81: Microsoft.Net.Http.Headers => 0x48baad61 => 52
	i32 1233093933, ; 82: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 32
	i32 1236289705, ; 83: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 22
	i32 1267360935, ; 84: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 130
	i32 1267908789, ; 85: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 31
	i32 1293217323, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 101
	i32 1324164729, ; 87: System.Linq => 0x4eed2679 => 154
	i32 1365406463, ; 88: System.ServiceModel.Internals.dll => 0x516272ff => 149
	i32 1376866003, ; 89: Xamarin.AndroidX.SavedState => 0x52114ed3 => 124
	i32 1379779777, ; 90: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 91: Xamarin.AndroidX.Media.dll => 0x5333188f => 116
	i32 1406073936, ; 92: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 96
	i32 1411638395, ; 93: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 74
	i32 1414043276, ; 94: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 20
	i32 1457743152, ; 95: System.Runtime.Extensions.dll => 0x56e36530 => 5
	i32 1460219004, ; 96: Xamarin.Forms.Xaml => 0x57092c7c => 139
	i32 1462112819, ; 97: System.IO.Compression.dll => 0x57261233 => 145
	i32 1469204771, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 85
	i32 1470490898, ; 99: Microsoft.Extensions.Primitives => 0x57a5e912 => 51
	i32 1486966743, ; 100: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 36
	i32 1516315406, ; 101: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 60
	i32 1543031311, ; 102: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 153
	i32 1543355203, ; 103: System.Reflection.Emit.dll => 0x5bfdbb43 => 151
	i32 1550322496, ; 104: System.Reflection.Extensions.dll => 0x5c680b40 => 6
	i32 1579809247, ; 105: Prism.NavigationEx => 0x5e29f9df => 59
	i32 1582372066, ; 106: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 100
	i32 1592978981, ; 107: System.Runtime.Serialization.dll => 0x5ef2ee25 => 11
	i32 1622152042, ; 108: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 114
	i32 1624863272, ; 109: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 133
	i32 1636350590, ; 110: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 98
	i32 1639515021, ; 111: System.Net.Http.dll => 0x61b9038d => 10
	i32 1639986890, ; 112: System.Text.RegularExpressions => 0x61c036ca => 153
	i32 1657153582, ; 113: System.Runtime => 0x62c6282e => 75
	i32 1658241508, ; 114: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 127
	i32 1658251792, ; 115: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 140
	i32 1670060433, ; 116: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 95
	i32 1726116996, ; 117: System.Reflection.dll => 0x66e27484 => 3
	i32 1729485958, ; 118: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 91
	i32 1746115085, ; 119: System.IO.Pipelines.dll => 0x68139a0d => 69
	i32 1765942094, ; 120: System.Reflection.Extensions => 0x6942234e => 6
	i32 1766324549, ; 121: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 126
	i32 1770582343, ; 122: Microsoft.Extensions.Logging.dll => 0x6988f147 => 48
	i32 1776026572, ; 123: System.Core.dll => 0x69dc03cc => 66
	i32 1788241197, ; 124: Xamarin.AndroidX.Fragment => 0x6a96652d => 103
	i32 1796167890, ; 125: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 40
	i32 1808609942, ; 126: Xamarin.AndroidX.Loader => 0x6bcd3296 => 114
	i32 1813201214, ; 127: Xamarin.Google.Android.Material => 0x6c13413e => 140
	i32 1818569960, ; 128: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 120
	i32 1819327070, ; 129: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 29
	i32 1828688058, ; 130: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 47
	i32 1849271627, ; 131: Prism.Forms.dll => 0x6e39a54b => 58
	i32 1867746548, ; 132: Xamarin.Essentials.dll => 0x6f538cf4 => 135
	i32 1875480394, ; 133: IdentityModel => 0x6fc98f4a => 13
	i32 1878053835, ; 134: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 139
	i32 1885316902, ; 135: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 88
	i32 1900610850, ; 136: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 137: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 117
	i32 1928288591, ; 138: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 23
	i32 1945717188, ; 139: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 32
	i32 1967334205, ; 140: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 34
	i32 2011961780, ; 141: System.Buffers.dll => 0x77ec19b4 => 65
	i32 2019465201, ; 142: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 112
	i32 2055257422, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 109
	i32 2066202781, ; 144: Prism => 0x7b27c09d => 57
	i32 2075706075, ; 145: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 23
	i32 2079903147, ; 146: System.Runtime.dll => 0x7bf8cdab => 75
	i32 2090596640, ; 147: System.Numerics.Vectors => 0x7c9bf920 => 73
	i32 2097448633, ; 148: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 105
	i32 2126786730, ; 149: Xamarin.Forms.Platform.Android => 0x7ec430aa => 137
	i32 2179096858, ; 150: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 26
	i32 2181898931, ; 151: Microsoft.Extensions.Options.dll => 0x820d22b3 => 50
	i32 2182298002, ; 152: OpiskeluSovellus => 0x82133992 => 56
	i32 2192057212, ; 153: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 47
	i32 2201231467, ; 154: System.Net.Http => 0x8334206b => 10
	i32 2204417087, ; 155: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 49
	i32 2217644978, ; 156: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 129
	i32 2229158877, ; 157: Microsoft.Extensions.Features.dll => 0x84de43dd => 44
	i32 2242871324, ; 158: Microsoft.AspNetCore.Http.dll => 0x85af801c => 27
	i32 2244775296, ; 159: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 115
	i32 2256548716, ; 160: Xamarin.AndroidX.MultiDex => 0x8680336c => 117
	i32 2261435625, ; 161: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 107
	i32 2266799131, ; 162: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2279755925, ; 163: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 123
	i32 2315684594, ; 164: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 83
	i32 2319144366, ; 165: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 33
	i32 2343171156, ; 166: Syncfusion.Core.XForms => 0x8ba9f454 => 61
	i32 2354730003, ; 167: Syncfusion.Licensing => 0x8c5a5413 => 62
	i32 2383496789, ; 168: System.Security.Principal.Windows.dll => 0x8e114655 => 76
	i32 2409053734, ; 169: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 121
	i32 2454642406, ; 170: System.Text.Encoding.dll => 0x924edee6 => 7
	i32 2465532216, ; 171: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 94
	i32 2471841756, ; 172: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 173: Java.Interop.dll => 0x93918882 => 15
	i32 2501346920, ; 174: System.Data.DataSetExtensions => 0x95178668 => 144
	i32 2505896520, ; 175: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 111
	i32 2537015816, ; 176: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 18
	i32 2570120770, ; 177: System.Text.Encodings.Web => 0x9930ee42 => 77
	i32 2581819634, ; 178: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 130
	i32 2592341985, ; 179: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 45
	i32 2592780907, ; 180: Prism.NavigationEx.dll => 0x9a8ab26b => 59
	i32 2593268061, ; 181: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 30
	i32 2594125473, ; 182: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 21
	i32 2620871830, ; 183: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 98
	i32 2624644809, ; 184: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 102
	i32 2633051222, ; 185: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 110
	i32 2633959305, ; 186: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 28
	i32 2637500010, ; 187: Microsoft.Extensions.Features => 0x9d350e6a => 44
	i32 2641251073, ; 188: OpiskeluSovellus.Android.dll => 0x9d6e4b01 => 0
	i32 2642291320, ; 189: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 71
	i32 2701096212, ; 190: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 127
	i32 2732626843, ; 191: Xamarin.AndroidX.Activity => 0xa2e0939b => 82
	i32 2735172069, ; 192: System.Threading.Channels => 0xa30769e5 => 79
	i32 2735631878, ; 193: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 18
	i32 2737747696, ; 194: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 85
	i32 2766581644, ; 195: Xamarin.Forms.Core => 0xa4e6af8c => 136
	i32 2778768386, ; 196: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 132
	i32 2810250172, ; 197: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 96
	i32 2819470561, ; 198: System.Xml.dll => 0xa80db4e1 => 80
	i32 2850549256, ; 199: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 29
	i32 2853208004, ; 200: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 132
	i32 2855708567, ; 201: Xamarin.AndroidX.Transition => 0xaa36a797 => 128
	i32 2868557005, ; 202: Syncfusion.Licensing.dll => 0xaafab4cd => 62
	i32 2874148507, ; 203: Syncfusion.Core.XForms.Android => 0xab50069b => 60
	i32 2875347124, ; 204: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 24
	i32 2901442782, ; 205: System.Reflection => 0xacf080de => 3
	i32 2903344695, ; 206: System.ComponentModel.Composition => 0xad0d8637 => 147
	i32 2905242038, ; 207: mscorlib.dll => 0xad2a79b6 => 54
	i32 2916838712, ; 208: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 133
	i32 2919462931, ; 209: System.Numerics.Vectors.dll => 0xae037813 => 73
	i32 2921128767, ; 210: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 84
	i32 2930166128, ; 211: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 36
	i32 2968338931, ; 212: System.Security.Principal.Windows => 0xb0ed41f3 => 76
	i32 2978368250, ; 213: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 21
	i32 2978675010, ; 214: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 101
	i32 2996646946, ; 215: Microsoft.AspNetCore.Http => 0xb29d3422 => 27
	i32 3024354802, ; 216: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 106
	i32 3036999524, ; 217: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 28
	i32 3044182254, ; 218: FormsViewGroup => 0xb57288ee => 12
	i32 3057625584, ; 219: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 118
	i32 3111772706, ; 220: System.Runtime.Serialization => 0xb979e222 => 11
	i32 3113762169, ; 221: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 30
	i32 3124832203, ; 222: System.Threading.Tasks.Extensions => 0xba4127cb => 150
	i32 3180757527, ; 223: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 38
	i32 3204380047, ; 224: System.Data.dll => 0xbefef58f => 142
	i32 3211777861, ; 225: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 100
	i32 3247949154, ; 226: Mono.Security => 0xc197c562 => 155
	i32 3258312781, ; 227: Xamarin.AndroidX.CardView => 0xc235e84d => 91
	i32 3265893370, ; 228: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 150
	i32 3267021929, ; 229: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 89
	i32 3299363146, ; 230: System.Text.Encoding => 0xc4a8494a => 7
	i32 3300764913, ; 231: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 39
	i32 3317135071, ; 232: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 99
	i32 3317144872, ; 233: System.Data => 0xc5b79d28 => 142
	i32 3340431453, ; 234: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 88
	i32 3346324047, ; 235: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 119
	i32 3353484488, ; 236: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 105
	i32 3353544232, ; 237: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 134
	i32 3358260929, ; 238: System.Text.Json => 0xc82afec1 => 78
	i32 3362522851, ; 239: Xamarin.AndroidX.Core => 0xc86c06e3 => 97
	i32 3366347497, ; 240: Java.Interop => 0xc8a662e9 => 15
	i32 3374999561, ; 241: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 123
	i32 3395150330, ; 242: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 74
	i32 3404865022, ; 243: System.ServiceModel.Internals => 0xcaf21dfe => 149
	i32 3407215217, ; 244: Xamarin.CommunityToolkit => 0xcb15fa71 => 134
	i32 3428513518, ; 245: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 43
	i32 3429136800, ; 246: System.Xml => 0xcc6479a0 => 80
	i32 3430777524, ; 247: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 248: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 102
	i32 3466904072, ; 249: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 33
	i32 3476120550, ; 250: Mono.Android => 0xcf3163e6 => 53
	i32 3476505041, ; 251: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 35
	i32 3485117614, ; 252: System.Text.Json.dll => 0xcfbaacae => 78
	i32 3486566296, ; 253: System.Transactions => 0xcfd0c798 => 143
	i32 3493954962, ; 254: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 93
	i32 3501239056, ; 255: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 89
	i32 3509114376, ; 256: System.Xml.Linq => 0xd128d608 => 81
	i32 3536029504, ; 257: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 137
	i32 3567349600, ; 258: System.ComponentModel.Composition.dll => 0xd4a16f60 => 147
	i32 3594787188, ; 259: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 71
	i32 3608519521, ; 260: System.Linq.dll => 0xd715a361 => 154
	i32 3618140916, ; 261: Xamarin.AndroidX.Preference => 0xd7a872f4 => 121
	i32 3627220390, ; 262: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 122
	i32 3632359727, ; 263: Xamarin.Forms.Platform => 0xd881692f => 138
	i32 3633644679, ; 264: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 84
	i32 3641597786, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 109
	i32 3657292374, ; 266: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 267: Mono.Android.dll => 0xdae8aa5e => 53
	i32 3676310014, ; 268: System.Web.Services.dll => 0xdb2009fe => 148
	i32 3679340867, ; 269: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 26
	i32 3682565725, ; 270: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 90
	i32 3684561358, ; 271: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 93
	i32 3689375977, ; 272: System.Drawing.Common => 0xdbe768e9 => 9
	i32 3691870036, ; 273: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 37
	i32 3718780102, ; 274: Xamarin.AndroidX.Annotation => 0xdda814c6 => 83
	i32 3724971120, ; 275: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 118
	i32 3727607285, ; 276: OpiskeluSovellus.dll => 0xde2ec5f5 => 56
	i32 3748608112, ; 277: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 67
	i32 3758932259, ; 278: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 107
	i32 3765508441, ; 279: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 49
	i32 3786282454, ; 280: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 92
	i32 3787005001, ; 281: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 20
	i32 3822602673, ; 282: Xamarin.AndroidX.Media => 0xe3d849b1 => 116
	i32 3829621856, ; 283: System.Numerics.dll => 0xe4436460 => 72
	i32 3841636137, ; 284: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3885922214, ; 285: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 128
	i32 3896760992, ; 286: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 97
	i32 3920810846, ; 287: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 146
	i32 3921031405, ; 288: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 131
	i32 3924815484, ; 289: Syncfusion.SfSchedule.XForms.dll => 0xe9efee7c => 64
	i32 3931092270, ; 290: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 120
	i32 3945713374, ; 291: System.Data.DataSetExtensions.dll => 0xeb2ecede => 144
	i32 3955647286, ; 292: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 86
	i32 4023392905, ; 293: System.IO.Pipelines => 0xefd01a89 => 69
	i32 4025784931, ; 294: System.Memory => 0xeff49a63 => 70
	i32 4044155772, ; 295: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 52
	i32 4044257358, ; 296: IdentityModel.dll => 0xf10e784e => 13
	i32 4054681211, ; 297: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 152
	i32 4078967171, ; 298: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 46
	i32 4085261167, ; 299: Prism.Forms => 0xf380236f => 58
	i32 4105002889, ; 300: Mono.Security.dll => 0xf4ad5f89 => 155
	i32 4126470640, ; 301: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 43
	i32 4141580284, ; 302: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 19
	i32 4147896353, ; 303: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 152
	i32 4151237749, ; 304: System.Core => 0xf76edc75 => 66
	i32 4152369130, ; 305: IdentityModel.OidcClient => 0xf7801fea => 14
	i32 4182413190, ; 306: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 113
	i32 4213026141, ; 307: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 67
	i32 4260525087, ; 308: System.Buffers => 0xfdf2741f => 65
	i32 4285181886, ; 309: Syncfusion.SfSchedule.XForms.Android => 0xff6aafbe => 63
	i32 4292120959, ; 310: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 113
	i32 4293859396 ; 311: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 35
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 16, i32 111, i32 141, i32 55, i32 136, i32 125, i32 125, i32 79, ; 0..7
	i32 92, i32 39, i32 126, i32 90, i32 24, i32 106, i32 8, i32 148, ; 8..15
	i32 95, i32 110, i32 104, i32 16, i32 17, i32 82, i32 72, i32 108, ; 16..23
	i32 25, i32 31, i32 70, i32 0, i32 38, i32 94, i32 135, i32 4, ; 24..31
	i32 103, i32 63, i32 34, i32 54, i32 68, i32 104, i32 64, i32 115, ; 32..39
	i32 22, i32 57, i32 51, i32 143, i32 48, i32 5, i32 40, i32 146, ; 40..47
	i32 99, i32 77, i32 131, i32 87, i32 81, i32 151, i32 61, i32 19, ; 48..55
	i32 145, i32 50, i32 9, i32 37, i32 122, i32 8, i32 14, i32 141, ; 56..63
	i32 55, i32 108, i32 12, i32 4, i32 124, i32 42, i32 86, i32 138, ; 64..71
	i32 112, i32 25, i32 68, i32 46, i32 17, i32 45, i32 129, i32 119, ; 72..79
	i32 87, i32 52, i32 32, i32 22, i32 130, i32 31, i32 101, i32 154, ; 80..87
	i32 149, i32 124, i32 2, i32 116, i32 96, i32 74, i32 20, i32 5, ; 88..95
	i32 139, i32 145, i32 85, i32 51, i32 36, i32 60, i32 153, i32 151, ; 96..103
	i32 6, i32 59, i32 100, i32 11, i32 114, i32 133, i32 98, i32 10, ; 104..111
	i32 153, i32 75, i32 127, i32 140, i32 95, i32 3, i32 91, i32 69, ; 112..119
	i32 6, i32 126, i32 48, i32 66, i32 103, i32 40, i32 114, i32 140, ; 120..127
	i32 120, i32 29, i32 47, i32 58, i32 135, i32 13, i32 139, i32 88, ; 128..135
	i32 2, i32 117, i32 23, i32 32, i32 34, i32 65, i32 112, i32 109, ; 136..143
	i32 57, i32 23, i32 75, i32 73, i32 105, i32 137, i32 26, i32 50, ; 144..151
	i32 56, i32 47, i32 10, i32 49, i32 129, i32 44, i32 27, i32 115, ; 152..159
	i32 117, i32 107, i32 41, i32 123, i32 83, i32 33, i32 61, i32 62, ; 160..167
	i32 76, i32 121, i32 7, i32 94, i32 1, i32 15, i32 144, i32 111, ; 168..175
	i32 18, i32 77, i32 130, i32 45, i32 59, i32 30, i32 21, i32 98, ; 176..183
	i32 102, i32 110, i32 28, i32 44, i32 0, i32 71, i32 127, i32 82, ; 184..191
	i32 79, i32 18, i32 85, i32 136, i32 132, i32 96, i32 80, i32 29, ; 192..199
	i32 132, i32 128, i32 62, i32 60, i32 24, i32 3, i32 147, i32 54, ; 200..207
	i32 133, i32 73, i32 84, i32 36, i32 76, i32 21, i32 101, i32 27, ; 208..215
	i32 106, i32 28, i32 12, i32 118, i32 11, i32 30, i32 150, i32 38, ; 216..223
	i32 142, i32 100, i32 155, i32 91, i32 150, i32 89, i32 7, i32 39, ; 224..231
	i32 99, i32 142, i32 88, i32 119, i32 105, i32 134, i32 78, i32 97, ; 232..239
	i32 15, i32 123, i32 74, i32 149, i32 134, i32 43, i32 80, i32 1, ; 240..247
	i32 102, i32 33, i32 53, i32 35, i32 78, i32 143, i32 93, i32 89, ; 248..255
	i32 81, i32 137, i32 147, i32 71, i32 154, i32 121, i32 122, i32 138, ; 256..263
	i32 84, i32 109, i32 41, i32 53, i32 148, i32 26, i32 90, i32 93, ; 264..271
	i32 9, i32 37, i32 83, i32 118, i32 56, i32 67, i32 107, i32 49, ; 272..279
	i32 92, i32 20, i32 116, i32 72, i32 42, i32 128, i32 97, i32 146, ; 280..287
	i32 131, i32 64, i32 120, i32 144, i32 86, i32 69, i32 70, i32 52, ; 288..295
	i32 13, i32 152, i32 46, i32 58, i32 155, i32 43, i32 19, i32 152, ; 296..303
	i32 66, i32 14, i32 113, i32 67, i32 65, i32 63, i32 113, i32 35 ; 312..311
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
