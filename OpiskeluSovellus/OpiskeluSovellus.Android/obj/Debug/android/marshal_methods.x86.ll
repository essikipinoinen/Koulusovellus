; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [284 x i32] [
	i32 15428812, ; 0: Json.Net.dll => 0xeb6ccc => 8
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 98
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 128
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 47
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 123
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 112
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 112
	i32 122350210, ; 7: System.Threading.Channels.dll => 0x74aea82 => 66
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 79
	i32 176714968, ; 9: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 31
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 113
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 77
	i32 221063263, ; 12: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 16
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 93
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 136
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 82
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 97
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 91
	i32 289138619, ; 18: Json.Net => 0x113be7bb => 8
	i32 300686228, ; 19: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 9
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 69
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 59
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 95
	i32 348048101, ; 23: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 17
	i32 384051609, ; 24: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 23
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 57
	i32 414356665, ; 26: OpiskeluSovellus.Android => 0x18b294b9 => 0
	i32 417611542, ; 27: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 30
	i32 441335492, ; 28: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 81
	i32 442521989, ; 29: Xamarin.Essentials => 0x1a605985 => 122
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 90
	i32 458494020, ; 31: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 26
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 46
	i32 469710990, ; 33: System.dll => 0x1bff388e => 55
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 91
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 102
	i32 490002678, ; 36: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 14
	i32 501000162, ; 37: Prism.dll => 0x1ddca7e2 => 49
	i32 513247710, ; 38: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 43
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 130
	i32 539058512, ; 40: Microsoft.Extensions.Logging => 0x20216150 => 40
	i32 548916678, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 32
	i32 605376203, ; 42: System.IO.Compression.FileSystem => 0x24154ecb => 134
	i32 627609679, ; 43: Xamarin.AndroidX.CustomView => 0x2568904f => 86
	i32 662205335, ; 44: System.Text.Encodings.Web.dll => 0x27787397 => 64
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 118
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 74
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 68
	i32 699345723, ; 48: System.Reflection.Emit => 0x29af2b3b => 139
	i32 724146010, ; 49: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 11
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 133
	i32 789151979, ; 51: Microsoft.Extensions.Options => 0x2f0980eb => 42
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 132
	i32 832711436, ; 53: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 29
	i32 843511501, ; 54: Xamarin.AndroidX.Print => 0x3246f6cd => 109
	i32 888076676, ; 55: IdentityModel.OidcClient.dll => 0x34eef984 => 6
	i32 928116545, ; 56: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 128
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 47
	i32 967690846, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 95
	i32 974778368, ; 59: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 60: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 111
	i32 1028951442, ; 61: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 34
	i32 1035644815, ; 62: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 73
	i32 1042160112, ; 63: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 125
	i32 1052210849, ; 64: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 99
	i32 1058641855, ; 65: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 17
	i32 1098259244, ; 66: System => 0x41761b2c => 55
	i32 1110309514, ; 67: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 38
	i32 1112354281, ; 68: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 9
	i32 1173126369, ; 69: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 37
	i32 1175144683, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 116
	i32 1178241025, ; 71: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 106
	i32 1204270330, ; 72: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 74
	i32 1220193633, ; 73: Microsoft.Net.Http.Headers => 0x48baad61 => 44
	i32 1233093933, ; 74: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 24
	i32 1236289705, ; 75: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 14
	i32 1267360935, ; 76: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 117
	i32 1267908789, ; 77: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 23
	i32 1293217323, ; 78: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 88
	i32 1365406463, ; 79: System.ServiceModel.Internals.dll => 0x516272ff => 137
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 111
	i32 1395857551, ; 81: Xamarin.AndroidX.Media.dll => 0x5333188f => 103
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 83
	i32 1411638395, ; 83: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 61
	i32 1414043276, ; 84: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 12
	i32 1460219004, ; 85: Xamarin.Forms.Xaml => 0x57092c7c => 126
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 133
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 72
	i32 1470490898, ; 88: Microsoft.Extensions.Primitives => 0x57a5e912 => 43
	i32 1486966743, ; 89: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 28
	i32 1543355203, ; 90: System.Reflection.Emit.dll => 0x5bfdbb43 => 139
	i32 1579809247, ; 91: Prism.NavigationEx => 0x5e29f9df => 51
	i32 1582372066, ; 92: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 87
	i32 1592978981, ; 93: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 94: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 101
	i32 1624863272, ; 95: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 120
	i32 1636350590, ; 96: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 85
	i32 1639515021, ; 97: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 98: System.Runtime => 0x62c6282e => 62
	i32 1658241508, ; 99: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 114
	i32 1658251792, ; 100: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 127
	i32 1670060433, ; 101: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 82
	i32 1729485958, ; 102: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 78
	i32 1746115085, ; 103: System.IO.Pipelines.dll => 0x68139a0d => 56
	i32 1766324549, ; 104: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 113
	i32 1770582343, ; 105: Microsoft.Extensions.Logging.dll => 0x6988f147 => 40
	i32 1776026572, ; 106: System.Core.dll => 0x69dc03cc => 53
	i32 1788241197, ; 107: Xamarin.AndroidX.Fragment => 0x6a96652d => 90
	i32 1796167890, ; 108: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 32
	i32 1808609942, ; 109: Xamarin.AndroidX.Loader => 0x6bcd3296 => 101
	i32 1813201214, ; 110: Xamarin.Google.Android.Material => 0x6c13413e => 127
	i32 1818569960, ; 111: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 107
	i32 1819327070, ; 112: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 21
	i32 1828688058, ; 113: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 39
	i32 1849271627, ; 114: Prism.Forms.dll => 0x6e39a54b => 50
	i32 1867746548, ; 115: Xamarin.Essentials.dll => 0x6f538cf4 => 122
	i32 1875480394, ; 116: IdentityModel => 0x6fc98f4a => 5
	i32 1878053835, ; 117: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 126
	i32 1885316902, ; 118: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 75
	i32 1919157823, ; 119: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 104
	i32 1928288591, ; 120: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 15
	i32 1945717188, ; 121: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 24
	i32 1967334205, ; 122: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 26
	i32 2011961780, ; 123: System.Buffers.dll => 0x77ec19b4 => 52
	i32 2019465201, ; 124: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 99
	i32 2055257422, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 96
	i32 2066202781, ; 126: Prism => 0x7b27c09d => 49
	i32 2075706075, ; 127: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 15
	i32 2079903147, ; 128: System.Runtime.dll => 0x7bf8cdab => 62
	i32 2090596640, ; 129: System.Numerics.Vectors => 0x7c9bf920 => 60
	i32 2097448633, ; 130: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 92
	i32 2126786730, ; 131: Xamarin.Forms.Platform.Android => 0x7ec430aa => 124
	i32 2179096858, ; 132: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 18
	i32 2181898931, ; 133: Microsoft.Extensions.Options.dll => 0x820d22b3 => 42
	i32 2182298002, ; 134: OpiskeluSovellus => 0x82133992 => 48
	i32 2192057212, ; 135: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 39
	i32 2201231467, ; 136: System.Net.Http => 0x8334206b => 2
	i32 2204417087, ; 137: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 41
	i32 2217644978, ; 138: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 116
	i32 2229158877, ; 139: Microsoft.Extensions.Features.dll => 0x84de43dd => 36
	i32 2242871324, ; 140: Microsoft.AspNetCore.Http.dll => 0x85af801c => 19
	i32 2244775296, ; 141: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 102
	i32 2256548716, ; 142: Xamarin.AndroidX.MultiDex => 0x8680336c => 104
	i32 2261435625, ; 143: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 94
	i32 2266799131, ; 144: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 33
	i32 2279755925, ; 145: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 110
	i32 2315684594, ; 146: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 70
	i32 2319144366, ; 147: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 25
	i32 2383496789, ; 148: System.Security.Principal.Windows.dll => 0x8e114655 => 63
	i32 2409053734, ; 149: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 108
	i32 2465532216, ; 150: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 81
	i32 2471841756, ; 151: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 152: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 153: System.Data.DataSetExtensions => 0x95178668 => 131
	i32 2505896520, ; 154: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 98
	i32 2537015816, ; 155: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 10
	i32 2570120770, ; 156: System.Text.Encodings.Web => 0x9930ee42 => 64
	i32 2581819634, ; 157: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 117
	i32 2592341985, ; 158: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 37
	i32 2592780907, ; 159: Prism.NavigationEx.dll => 0x9a8ab26b => 51
	i32 2593268061, ; 160: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 22
	i32 2594125473, ; 161: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 13
	i32 2620871830, ; 162: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 85
	i32 2624644809, ; 163: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 89
	i32 2633051222, ; 164: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 97
	i32 2633959305, ; 165: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 20
	i32 2637500010, ; 166: Microsoft.Extensions.Features => 0x9d350e6a => 36
	i32 2641251073, ; 167: OpiskeluSovellus.Android.dll => 0x9d6e4b01 => 0
	i32 2642291320, ; 168: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 58
	i32 2701096212, ; 169: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 114
	i32 2732626843, ; 170: Xamarin.AndroidX.Activity => 0xa2e0939b => 69
	i32 2735172069, ; 171: System.Threading.Channels => 0xa30769e5 => 66
	i32 2735631878, ; 172: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 10
	i32 2737747696, ; 173: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 72
	i32 2766581644, ; 174: Xamarin.Forms.Core => 0xa4e6af8c => 123
	i32 2778768386, ; 175: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 119
	i32 2810250172, ; 176: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 83
	i32 2819470561, ; 177: System.Xml.dll => 0xa80db4e1 => 67
	i32 2850549256, ; 178: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 21
	i32 2853208004, ; 179: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 119
	i32 2855708567, ; 180: Xamarin.AndroidX.Transition => 0xaa36a797 => 115
	i32 2875347124, ; 181: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 16
	i32 2903344695, ; 182: System.ComponentModel.Composition => 0xad0d8637 => 135
	i32 2905242038, ; 183: mscorlib.dll => 0xad2a79b6 => 46
	i32 2916838712, ; 184: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 120
	i32 2919462931, ; 185: System.Numerics.Vectors.dll => 0xae037813 => 60
	i32 2921128767, ; 186: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 71
	i32 2930166128, ; 187: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 28
	i32 2968338931, ; 188: System.Security.Principal.Windows => 0xb0ed41f3 => 63
	i32 2978368250, ; 189: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 13
	i32 2978675010, ; 190: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 88
	i32 2996646946, ; 191: Microsoft.AspNetCore.Http => 0xb29d3422 => 19
	i32 3024354802, ; 192: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 93
	i32 3036999524, ; 193: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 20
	i32 3044182254, ; 194: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 195: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 105
	i32 3111772706, ; 196: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3113762169, ; 197: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 22
	i32 3124832203, ; 198: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3180757527, ; 199: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 30
	i32 3204380047, ; 200: System.Data.dll => 0xbefef58f => 129
	i32 3211777861, ; 201: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 87
	i32 3247949154, ; 202: Mono.Security => 0xc197c562 => 141
	i32 3258312781, ; 203: Xamarin.AndroidX.CardView => 0xc235e84d => 78
	i32 3265893370, ; 204: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3267021929, ; 205: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 76
	i32 3300764913, ; 206: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 31
	i32 3317135071, ; 207: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 86
	i32 3317144872, ; 208: System.Data => 0xc5b79d28 => 129
	i32 3340431453, ; 209: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 75
	i32 3346324047, ; 210: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 106
	i32 3353484488, ; 211: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 92
	i32 3353544232, ; 212: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 121
	i32 3358260929, ; 213: System.Text.Json => 0xc82afec1 => 65
	i32 3362522851, ; 214: Xamarin.AndroidX.Core => 0xc86c06e3 => 84
	i32 3366347497, ; 215: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 216: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 110
	i32 3395150330, ; 217: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 61
	i32 3404865022, ; 218: System.ServiceModel.Internals => 0xcaf21dfe => 137
	i32 3407215217, ; 219: Xamarin.CommunityToolkit => 0xcb15fa71 => 121
	i32 3428513518, ; 220: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 35
	i32 3429136800, ; 221: System.Xml => 0xcc6479a0 => 67
	i32 3430777524, ; 222: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 223: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 89
	i32 3466904072, ; 224: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 25
	i32 3476120550, ; 225: Mono.Android => 0xcf3163e6 => 45
	i32 3476505041, ; 226: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 27
	i32 3485117614, ; 227: System.Text.Json.dll => 0xcfbaacae => 65
	i32 3486566296, ; 228: System.Transactions => 0xcfd0c798 => 130
	i32 3493954962, ; 229: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 80
	i32 3501239056, ; 230: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 76
	i32 3509114376, ; 231: System.Xml.Linq => 0xd128d608 => 68
	i32 3536029504, ; 232: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 124
	i32 3567349600, ; 233: System.ComponentModel.Composition.dll => 0xd4a16f60 => 135
	i32 3594787188, ; 234: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 58
	i32 3618140916, ; 235: Xamarin.AndroidX.Preference => 0xd7a872f4 => 108
	i32 3627220390, ; 236: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 109
	i32 3632359727, ; 237: Xamarin.Forms.Platform => 0xd881692f => 125
	i32 3633644679, ; 238: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 71
	i32 3641597786, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 96
	i32 3657292374, ; 240: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 33
	i32 3672681054, ; 241: Mono.Android.dll => 0xdae8aa5e => 45
	i32 3676310014, ; 242: System.Web.Services.dll => 0xdb2009fe => 136
	i32 3679340867, ; 243: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 18
	i32 3682565725, ; 244: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 77
	i32 3684561358, ; 245: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 80
	i32 3689375977, ; 246: System.Drawing.Common => 0xdbe768e9 => 132
	i32 3691870036, ; 247: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 29
	i32 3718780102, ; 248: Xamarin.AndroidX.Annotation => 0xdda814c6 => 70
	i32 3724971120, ; 249: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 105
	i32 3727607285, ; 250: OpiskeluSovellus.dll => 0xde2ec5f5 => 48
	i32 3748608112, ; 251: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 54
	i32 3758932259, ; 252: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 94
	i32 3765508441, ; 253: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 41
	i32 3786282454, ; 254: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 79
	i32 3787005001, ; 255: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 12
	i32 3822602673, ; 256: Xamarin.AndroidX.Media => 0xe3d849b1 => 103
	i32 3829621856, ; 257: System.Numerics.dll => 0xe4436460 => 59
	i32 3841636137, ; 258: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 34
	i32 3885922214, ; 259: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 115
	i32 3896760992, ; 260: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 84
	i32 3920810846, ; 261: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 134
	i32 3921031405, ; 262: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 118
	i32 3931092270, ; 263: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 107
	i32 3945713374, ; 264: System.Data.DataSetExtensions.dll => 0xeb2ecede => 131
	i32 3955647286, ; 265: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 73
	i32 4023392905, ; 266: System.IO.Pipelines => 0xefd01a89 => 56
	i32 4025784931, ; 267: System.Memory => 0xeff49a63 => 57
	i32 4044155772, ; 268: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 44
	i32 4044257358, ; 269: IdentityModel.dll => 0xf10e784e => 5
	i32 4054681211, ; 270: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 140
	i32 4078967171, ; 271: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 38
	i32 4085261167, ; 272: Prism.Forms => 0xf380236f => 50
	i32 4105002889, ; 273: Mono.Security.dll => 0xf4ad5f89 => 141
	i32 4126470640, ; 274: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 35
	i32 4141580284, ; 275: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 11
	i32 4147896353, ; 276: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 140
	i32 4151237749, ; 277: System.Core => 0xf76edc75 => 53
	i32 4152369130, ; 278: IdentityModel.OidcClient => 0xf7801fea => 6
	i32 4182413190, ; 279: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 100
	i32 4213026141, ; 280: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 54
	i32 4260525087, ; 281: System.Buffers => 0xfdf2741f => 52
	i32 4292120959, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 100
	i32 4293859396 ; 283: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 27
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [284 x i32] [
	i32 8, i32 98, i32 128, i32 47, i32 123, i32 112, i32 112, i32 66, ; 0..7
	i32 79, i32 31, i32 113, i32 77, i32 16, i32 93, i32 136, i32 82, ; 8..15
	i32 97, i32 91, i32 8, i32 9, i32 69, i32 59, i32 95, i32 17, ; 16..23
	i32 23, i32 57, i32 0, i32 30, i32 81, i32 122, i32 90, i32 26, ; 24..31
	i32 46, i32 55, i32 91, i32 102, i32 14, i32 49, i32 43, i32 130, ; 32..39
	i32 40, i32 32, i32 134, i32 86, i32 64, i32 118, i32 74, i32 68, ; 40..47
	i32 139, i32 11, i32 133, i32 42, i32 132, i32 29, i32 109, i32 6, ; 48..55
	i32 128, i32 47, i32 95, i32 4, i32 111, i32 34, i32 73, i32 125, ; 56..63
	i32 99, i32 17, i32 55, i32 38, i32 9, i32 37, i32 116, i32 106, ; 64..71
	i32 74, i32 44, i32 24, i32 14, i32 117, i32 23, i32 88, i32 137, ; 72..79
	i32 111, i32 103, i32 83, i32 61, i32 12, i32 126, i32 133, i32 72, ; 80..87
	i32 43, i32 28, i32 139, i32 51, i32 87, i32 3, i32 101, i32 120, ; 88..95
	i32 85, i32 2, i32 62, i32 114, i32 127, i32 82, i32 78, i32 56, ; 96..103
	i32 113, i32 40, i32 53, i32 90, i32 32, i32 101, i32 127, i32 107, ; 104..111
	i32 21, i32 39, i32 50, i32 122, i32 5, i32 126, i32 75, i32 104, ; 112..119
	i32 15, i32 24, i32 26, i32 52, i32 99, i32 96, i32 49, i32 15, ; 120..127
	i32 62, i32 60, i32 92, i32 124, i32 18, i32 42, i32 48, i32 39, ; 128..135
	i32 2, i32 41, i32 116, i32 36, i32 19, i32 102, i32 104, i32 94, ; 136..143
	i32 33, i32 110, i32 70, i32 25, i32 63, i32 108, i32 81, i32 1, ; 144..151
	i32 7, i32 131, i32 98, i32 10, i32 64, i32 117, i32 37, i32 51, ; 152..159
	i32 22, i32 13, i32 85, i32 89, i32 97, i32 20, i32 36, i32 0, ; 160..167
	i32 58, i32 114, i32 69, i32 66, i32 10, i32 72, i32 123, i32 119, ; 168..175
	i32 83, i32 67, i32 21, i32 119, i32 115, i32 16, i32 135, i32 46, ; 176..183
	i32 120, i32 60, i32 71, i32 28, i32 63, i32 13, i32 88, i32 19, ; 184..191
	i32 93, i32 20, i32 4, i32 105, i32 3, i32 22, i32 138, i32 30, ; 192..199
	i32 129, i32 87, i32 141, i32 78, i32 138, i32 76, i32 31, i32 86, ; 200..207
	i32 129, i32 75, i32 106, i32 92, i32 121, i32 65, i32 84, i32 7, ; 208..215
	i32 110, i32 61, i32 137, i32 121, i32 35, i32 67, i32 1, i32 89, ; 216..223
	i32 25, i32 45, i32 27, i32 65, i32 130, i32 80, i32 76, i32 68, ; 224..231
	i32 124, i32 135, i32 58, i32 108, i32 109, i32 125, i32 71, i32 96, ; 232..239
	i32 33, i32 45, i32 136, i32 18, i32 77, i32 80, i32 132, i32 29, ; 240..247
	i32 70, i32 105, i32 48, i32 54, i32 94, i32 41, i32 79, i32 12, ; 248..255
	i32 103, i32 59, i32 34, i32 115, i32 84, i32 134, i32 118, i32 107, ; 256..263
	i32 131, i32 73, i32 56, i32 57, i32 44, i32 5, i32 140, i32 38, ; 264..271
	i32 50, i32 141, i32 35, i32 11, i32 140, i32 53, i32 6, i32 100, ; 272..279
	i32 54, i32 52, i32 100, i32 27 ; 280..283
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
