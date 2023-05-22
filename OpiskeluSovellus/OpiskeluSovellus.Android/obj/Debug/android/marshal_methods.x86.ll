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
@assembly_image_cache_hashes = local_unnamed_addr constant [408 x i32] [
	i32 15428812, ; 0: Json.Net.dll => 0xeb6ccc => 36
	i32 15802525, ; 1: Microsoft.CodeAnalysis.VisualBasic.dll => 0xf1209d => 64
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 152
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 183
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 86
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 25
	i32 57263871, ; 6: Xamarin.Forms.Core.dll => 0x369c6ff => 177
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 19
	i32 72810961, ; 8: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x45701d1 => 62
	i32 101534019, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 166
	i32 117431740, ; 10: System.Runtime.InteropServices => 0x6ffddbc => 198
	i32 120558881, ; 11: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 166
	i32 122350210, ; 12: System.Threading.Channels.dll => 0x74aea82 => 120
	i32 127363243, ; 13: ICSharpCode.SharpZipLib => 0x79768ab => 32
	i32 149972175, ; 14: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 19
	i32 165246403, ; 15: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 133
	i32 176714968, ; 16: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 59
	i32 182336117, ; 17: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 167
	i32 184328833, ; 18: System.ValueTuple.dll => 0xafca281 => 194
	i32 186815484, ; 19: Mono.Cecil => 0xb2293fc => 80
	i32 209399409, ; 20: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 131
	i32 220171995, ; 21: System.Diagnostics.Debug => 0xd1f8edb => 2
	i32 221063263, ; 22: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 44
	i32 230216969, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 147
	i32 231409092, ; 24: System.Linq.Parallel => 0xdcb05c4 => 27
	i32 231814094, ; 25: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 26: System.Web.Services => 0xde07cb4 => 189
	i32 261689757, ; 27: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 136
	i32 278686392, ; 28: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 151
	i32 280482487, ; 29: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 145
	i32 289138619, ; 30: Json.Net => 0x113be7bb => 36
	i32 300686228, ; 31: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 37
	i32 318968648, ; 32: Xamarin.AndroidX.Activity.dll => 0x13031348 => 123
	i32 321597661, ; 33: System.Numerics => 0x132b30dd => 112
	i32 342366114, ; 34: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 149
	i32 348048101, ; 35: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 45
	i32 379916513, ; 36: System.Threading.Thread.dll => 0x16a510e1 => 25
	i32 384051609, ; 37: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 51
	i32 385762202, ; 38: System.Memory.dll => 0x16fe439a => 108
	i32 386288746, ; 39: System.Composition.Convention.dll => 0x17064c6a => 99
	i32 414356665, ; 40: OpiskeluSovellus.Android => 0x18b294b9 => 0
	i32 417611542, ; 41: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 58
	i32 441335492, ; 42: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 135
	i32 442521989, ; 43: Xamarin.Essentials => 0x1a605985 => 176
	i32 442565967, ; 44: System.Collections => 0x1a61054f => 3
	i32 450948140, ; 45: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 144
	i32 454207544, ; 46: Syncfusion.SfSchedule.XForms.Android.dll => 0x1b12a838 => 94
	i32 458494020, ; 47: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 54
	i32 465846621, ; 48: mscorlib => 0x1bc4415d => 84
	i32 469710990, ; 49: System.dll => 0x1bff388e => 105
	i32 476646585, ; 50: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 145
	i32 481455486, ; 51: Syncfusion.SfSchedule.XForms => 0x1cb26d7e => 95
	i32 486930444, ; 52: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 156
	i32 490002678, ; 53: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 42
	i32 498788369, ; 54: System.ObjectModel => 0x1dbae811 => 26
	i32 501000162, ; 55: Prism.dll => 0x1ddca7e2 => 88
	i32 513247710, ; 56: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 77
	i32 526420162, ; 57: System.Transactions.dll => 0x1f6088c2 => 185
	i32 537295123, ; 58: Microsoft.CodeAnalysis.VisualBasic.Workspaces.dll => 0x20067913 => 65
	i32 539058512, ; 59: Microsoft.Extensions.Logging => 0x20216150 => 74
	i32 540030774, ; 60: System.IO.FileSystem.dll => 0x20303736 => 12
	i32 545304856, ; 61: System.Runtime.Extensions => 0x2080b118 => 10
	i32 548916678, ; 62: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 60
	i32 566059857, ; 63: Mono.Cecil.Pdb => 0x21bd6351 => 82
	i32 605376203, ; 64: System.IO.Compression.FileSystem => 0x24154ecb => 187
	i32 613668793, ; 65: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 200
	i32 627609679, ; 66: Xamarin.AndroidX.CustomView => 0x2568904f => 140
	i32 662205335, ; 67: System.Text.Encodings.Web.dll => 0x27787397 => 118
	i32 663517072, ; 68: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 172
	i32 666292255, ; 69: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 128
	i32 672442732, ; 70: System.Collections.Concurrent => 0x2814a96c => 4
	i32 687422377, ; 71: System.Composition.Convention => 0x28f93ba9 => 99
	i32 690569205, ; 72: System.Xml.Linq.dll => 0x29293ff5 => 122
	i32 699345723, ; 73: System.Reflection.Emit => 0x29af2b3b => 192
	i32 717085101, ; 74: Mono.Cecil.dll => 0x2abdd9ad => 80
	i32 719061231, ; 75: Syncfusion.Core.XForms.dll => 0x2adc00ef => 92
	i32 724146010, ; 76: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 39
	i32 752232764, ; 77: System.Diagnostics.Contracts.dll => 0x2cd6293c => 24
	i32 775507847, ; 78: System.IO.Compression => 0x2e394f87 => 106
	i32 783888833, ; 79: System.Composition.Runtime.dll => 0x2eb931c1 => 101
	i32 789151979, ; 80: Microsoft.Extensions.Options => 0x2f0980eb => 76
	i32 809851609, ; 81: System.Drawing.Common.dll => 0x30455ad9 => 28
	i32 832711436, ; 82: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 57
	i32 843511501, ; 83: Xamarin.AndroidX.Print => 0x3246f6cd => 163
	i32 877678880, ; 84: System.Globalization.dll => 0x34505120 => 8
	i32 888076676, ; 85: IdentityModel.OidcClient.dll => 0x34eef984 => 34
	i32 907727466, ; 86: Microsoft.CodeAnalysis.VisualBasic.Workspaces => 0x361ad26a => 65
	i32 928116545, ; 87: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 183
	i32 955402788, ; 88: Newtonsoft.Json => 0x38f24a24 => 86
	i32 967690846, ; 89: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 149
	i32 974778368, ; 90: FormsViewGroup.dll => 0x3a19f000 => 31
	i32 975874589, ; 91: System.Xml.XDocument => 0x3a2aaa1d => 11
	i32 987214855, ; 92: System.Diagnostics.Tools => 0x3ad7b407 => 15
	i32 992768348, ; 93: System.Collections.dll => 0x3b2c715c => 3
	i32 994442037, ; 94: System.IO.FileSystem => 0x3b45fb35 => 12
	i32 1012816738, ; 95: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 165
	i32 1028951442, ; 96: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 68
	i32 1035644815, ; 97: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 127
	i32 1042160112, ; 98: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 180
	i32 1044663988, ; 99: System.Linq.Expressions.dll => 0x3e444eb4 => 195
	i32 1052210849, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 153
	i32 1058641855, ; 101: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 45
	i32 1067653374, ; 102: Mono.Cecil.Rocks.dll => 0x3fa318fe => 83
	i32 1098259244, ; 103: System => 0x41761b2c => 105
	i32 1110309514, ; 104: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 72
	i32 1112354281, ; 105: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 37
	i32 1173126369, ; 106: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 71
	i32 1175144683, ; 107: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 170
	i32 1178241025, ; 108: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 160
	i32 1186231468, ; 109: Newtonsoft.Json.Bson.dll => 0x46b474ac => 85
	i32 1204270330, ; 110: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 128
	i32 1220193633, ; 111: Microsoft.Net.Http.Headers => 0x48baad61 => 78
	i32 1233093933, ; 112: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 52
	i32 1236289705, ; 113: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 42
	i32 1250767539, ; 114: Mono.Cecil.Pdb.dll => 0x4a8d32b3 => 82
	i32 1267360935, ; 115: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 171
	i32 1267908789, ; 116: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 51
	i32 1293217323, ; 117: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 142
	i32 1324164729, ; 118: System.Linq => 0x4eed2679 => 196
	i32 1364015309, ; 119: System.IO => 0x514d38cd => 197
	i32 1365406463, ; 120: System.ServiceModel.Internals.dll => 0x516272ff => 190
	i32 1376866003, ; 121: Xamarin.AndroidX.SavedState => 0x52114ed3 => 165
	i32 1379779777, ; 122: System.Resources.ResourceManager => 0x523dc4c1 => 16
	i32 1395857551, ; 123: Xamarin.AndroidX.Media.dll => 0x5333188f => 157
	i32 1406073936, ; 124: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 137
	i32 1411638395, ; 125: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 115
	i32 1414043276, ; 126: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 40
	i32 1453312822, ; 127: System.Diagnostics.Tools.dll => 0x569fcb36 => 15
	i32 1457743152, ; 128: System.Runtime.Extensions.dll => 0x56e36530 => 10
	i32 1460219004, ; 129: Xamarin.Forms.Xaml => 0x57092c7c => 181
	i32 1461234159, ; 130: System.Collections.Immutable.dll => 0x5718a9ef => 97
	i32 1462112819, ; 131: System.IO.Compression.dll => 0x57261233 => 106
	i32 1469204771, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 126
	i32 1470490898, ; 133: Microsoft.Extensions.Primitives => 0x57a5e912 => 77
	i32 1479771757, ; 134: System.Collections.Immutable => 0x5833866d => 97
	i32 1486966743, ; 135: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 56
	i32 1516315406, ; 136: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 91
	i32 1543031311, ; 137: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 199
	i32 1543355203, ; 138: System.Reflection.Emit.dll => 0x5bfdbb43 => 192
	i32 1550322496, ; 139: System.Reflection.Extensions.dll => 0x5c680b40 => 22
	i32 1565862583, ; 140: System.IO.FileSystem.Primitives => 0x5d552ab7 => 17
	i32 1579809247, ; 141: Prism.NavigationEx => 0x5e29f9df => 90
	i32 1582372066, ; 142: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 141
	i32 1592978981, ; 143: System.Runtime.Serialization.dll => 0x5ef2ee25 => 29
	i32 1622152042, ; 144: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 155
	i32 1624863272, ; 145: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 174
	i32 1636350590, ; 146: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 139
	i32 1639515021, ; 147: System.Net.Http.dll => 0x61b9038d => 109
	i32 1639986890, ; 148: System.Text.RegularExpressions => 0x61c036ca => 199
	i32 1657153582, ; 149: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 150: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 168
	i32 1658251792, ; 151: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 182
	i32 1670060433, ; 152: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 136
	i32 1691477237, ; 153: System.Reflection.Metadata => 0x64d1e4f5 => 114
	i32 1701541528, ; 154: System.Diagnostics.Debug.dll => 0x656b7698 => 2
	i32 1712031326, ; 155: System.Composition.Hosting.dll => 0x660b865e => 100
	i32 1726116996, ; 156: System.Reflection.dll => 0x66e27484 => 7
	i32 1728033016, ; 157: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 20
	i32 1729485958, ; 158: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 132
	i32 1746115085, ; 159: System.IO.Pipelines.dll => 0x68139a0d => 107
	i32 1765942094, ; 160: System.Reflection.Extensions => 0x6942234e => 22
	i32 1766324549, ; 161: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 167
	i32 1770582343, ; 162: Microsoft.Extensions.Logging.dll => 0x6988f147 => 74
	i32 1776026572, ; 163: System.Core.dll => 0x69dc03cc => 103
	i32 1788241197, ; 164: Xamarin.AndroidX.Fragment => 0x6a96652d => 144
	i32 1796167890, ; 165: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 60
	i32 1808609942, ; 166: Xamarin.AndroidX.Loader => 0x6bcd3296 => 155
	i32 1813201214, ; 167: Xamarin.Google.Android.Material => 0x6c13413e => 182
	i32 1818569960, ; 168: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 161
	i32 1819327070, ; 169: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 49
	i32 1824175904, ; 170: System.Text.Encoding.Extensions => 0x6cbab720 => 21
	i32 1828688058, ; 171: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 73
	i32 1849271627, ; 172: Prism.Forms.dll => 0x6e39a54b => 89
	i32 1858542181, ; 173: System.Linq.Expressions => 0x6ec71a65 => 195
	i32 1860652673, ; 174: Mono.Cecil.Mdb => 0x6ee74e81 => 81
	i32 1867746548, ; 175: Xamarin.Essentials.dll => 0x6f538cf4 => 176
	i32 1870277092, ; 176: System.Reflection.Primitives => 0x6f7a29e4 => 13
	i32 1875480394, ; 177: IdentityModel => 0x6fc98f4a => 33
	i32 1878053835, ; 178: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 181
	i32 1885316902, ; 179: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 129
	i32 1888955245, ; 180: System.Diagnostics.Contracts => 0x70972b6d => 24
	i32 1889954781, ; 181: System.Reflection.Metadata.dll => 0x70a66bdd => 114
	i32 1900610850, ; 182: System.Resources.ResourceManager.dll => 0x71490522 => 16
	i32 1919157823, ; 183: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 158
	i32 1928288591, ; 184: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 43
	i32 1931959220, ; 185: System.Composition.AttributedModel.dll => 0x73275bb4 => 98
	i32 1945717188, ; 186: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 52
	i32 1967334205, ; 187: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 54
	i32 1977015694, ; 188: Mono.Cecil.Mdb.dll => 0x75d6dd8e => 81
	i32 1983665899, ; 189: System.Composition.TypedParts.dll => 0x763c56eb => 102
	i32 2011961780, ; 190: System.Buffers.dll => 0x77ec19b4 => 96
	i32 2019465201, ; 191: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 153
	i32 2055257422, ; 192: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 150
	i32 2066202781, ; 193: Prism => 0x7b27c09d => 88
	i32 2069514766, ; 194: Newtonsoft.Json.Bson => 0x7b5a4a0e => 85
	i32 2075706075, ; 195: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 43
	i32 2079903147, ; 196: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 197: System.Numerics.Vectors => 0x7c9bf920 => 113
	i32 2097448633, ; 198: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 146
	i32 2113902067, ; 199: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 178
	i32 2126786730, ; 200: Xamarin.Forms.Platform.Android => 0x7ec430aa => 179
	i32 2179096858, ; 201: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 46
	i32 2181898931, ; 202: Microsoft.Extensions.Options.dll => 0x820d22b3 => 76
	i32 2182298002, ; 203: OpiskeluSovellus => 0x82133992 => 87
	i32 2192057212, ; 204: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 73
	i32 2193016926, ; 205: System.ObjectModel.dll => 0x82b6c85e => 26
	i32 2201231467, ; 206: System.Net.Http => 0x8334206b => 109
	i32 2204417087, ; 207: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 75
	i32 2217644978, ; 208: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 170
	i32 2222056684, ; 209: System.Threading.Tasks.Parallel => 0x8471e4ec => 23
	i32 2229158877, ; 210: Microsoft.Extensions.Features.dll => 0x84de43dd => 70
	i32 2242871324, ; 211: Microsoft.AspNetCore.Http.dll => 0x85af801c => 47
	i32 2244775296, ; 212: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 156
	i32 2256548716, ; 213: Xamarin.AndroidX.MultiDex => 0x8680336c => 158
	i32 2261435625, ; 214: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 148
	i32 2266799131, ; 215: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 67
	i32 2279755925, ; 216: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 164
	i32 2315684594, ; 217: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 124
	i32 2319144366, ; 218: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 53
	i32 2320631194, ; 219: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 23
	i32 2343171156, ; 220: Syncfusion.Core.XForms => 0x8ba9f454 => 92
	i32 2344264397, ; 221: System.ValueTuple => 0x8bbaa2cd => 194
	i32 2354730003, ; 222: Syncfusion.Licensing => 0x8c5a5413 => 93
	i32 2368005991, ; 223: System.Xml.ReaderWriter.dll => 0x8d24e767 => 18
	i32 2383496789, ; 224: System.Security.Principal.Windows.dll => 0x8e114655 => 117
	i32 2392818924, ; 225: System.Net.Http.Formatting.dll => 0x8e9f84ec => 110
	i32 2397082276, ; 226: Xamarin.Forms.PancakeView => 0x8ee092a4 => 178
	i32 2409053734, ; 227: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 162
	i32 2454642406, ; 228: System.Text.Encoding.dll => 0x924edee6 => 6
	i32 2459001652, ; 229: System.Linq.Parallel.dll => 0x92916334 => 27
	i32 2465532216, ; 230: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 135
	i32 2471841756, ; 231: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 232: Java.Interop.dll => 0x93918882 => 35
	i32 2501346920, ; 233: System.Data.DataSetExtensions => 0x95178668 => 186
	i32 2505896520, ; 234: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 152
	i32 2537015816, ; 235: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 38
	i32 2570120770, ; 236: System.Text.Encodings.Web => 0x9930ee42 => 118
	i32 2581819634, ; 237: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 171
	i32 2585220780, ; 238: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 21
	i32 2592341985, ; 239: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 71
	i32 2592780907, ; 240: Prism.NavigationEx.dll => 0x9a8ab26b => 90
	i32 2593268061, ; 241: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 50
	i32 2594125473, ; 242: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 41
	i32 2620871830, ; 243: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 139
	i32 2624644809, ; 244: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 143
	i32 2633051222, ; 245: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 151
	i32 2633959305, ; 246: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 48
	i32 2637500010, ; 247: Microsoft.Extensions.Features => 0x9d350e6a => 70
	i32 2641251073, ; 248: OpiskeluSovellus.Android.dll => 0x9d6e4b01 => 0
	i32 2642291320, ; 249: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 111
	i32 2664396074, ; 250: System.Xml.XDocument.dll => 0x9ecf752a => 11
	i32 2693849962, ; 251: System.IO.dll => 0xa090e36a => 197
	i32 2701096212, ; 252: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 168
	i32 2715334215, ; 253: System.Threading.Tasks.dll => 0xa1d8b647 => 5
	i32 2722434549, ; 254: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 63
	i32 2724373263, ; 255: System.Runtime.Numerics.dll => 0xa262a30f => 14
	i32 2732626843, ; 256: Xamarin.AndroidX.Activity => 0xa2e0939b => 123
	i32 2735172069, ; 257: System.Threading.Channels => 0xa30769e5 => 120
	i32 2735631878, ; 258: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 38
	i32 2737747696, ; 259: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 126
	i32 2765824710, ; 260: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 202
	i32 2766581644, ; 261: Xamarin.Forms.Core => 0xa4e6af8c => 177
	i32 2778768386, ; 262: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 173
	i32 2803228030, ; 263: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 201
	i32 2810250172, ; 264: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 137
	i32 2819470561, ; 265: System.Xml.dll => 0xa80db4e1 => 121
	i32 2850549256, ; 266: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 49
	i32 2853208004, ; 267: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 173
	i32 2855708567, ; 268: Xamarin.AndroidX.Transition => 0xaa36a797 => 169
	i32 2868557005, ; 269: Syncfusion.Licensing.dll => 0xaafab4cd => 93
	i32 2874148507, ; 270: Syncfusion.Core.XForms.Android => 0xab50069b => 91
	i32 2875347124, ; 271: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 44
	i32 2878742115, ; 272: DocoptNet => 0xab961e63 => 30
	i32 2901442782, ; 273: System.Reflection => 0xacf080de => 7
	i32 2903344695, ; 274: System.ComponentModel.Composition => 0xad0d8637 => 188
	i32 2905242038, ; 275: mscorlib.dll => 0xad2a79b6 => 84
	i32 2916838712, ; 276: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 174
	i32 2919462931, ; 277: System.Numerics.Vectors.dll => 0xae037813 => 113
	i32 2921128767, ; 278: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 125
	i32 2930166128, ; 279: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 56
	i32 2942453041, ; 280: System.Xml.XPath.XDocument => 0xaf624531 => 201
	i32 2968338931, ; 281: System.Security.Principal.Windows => 0xb0ed41f3 => 117
	i32 2972252294, ; 282: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 200
	i32 2978368250, ; 283: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 41
	i32 2978675010, ; 284: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 142
	i32 2988176241, ; 285: Microsoft.CodeAnalysis.Workspaces => 0xb21bf371 => 66
	i32 2996646946, ; 286: Microsoft.AspNetCore.Http => 0xb29d3422 => 47
	i32 3024354802, ; 287: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 147
	i32 3025919916, ; 288: Mono.Cecil.Rocks => 0xb45bdfac => 83
	i32 3036999524, ; 289: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 48
	i32 3044182254, ; 290: FormsViewGroup => 0xb57288ee => 31
	i32 3057625584, ; 291: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 159
	i32 3075834255, ; 292: System.Threading.Tasks => 0xb755818f => 5
	i32 3111772706, ; 293: System.Runtime.Serialization => 0xb979e222 => 29
	i32 3113762169, ; 294: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 50
	i32 3124832203, ; 295: System.Threading.Tasks.Extensions => 0xba4127cb => 191
	i32 3135029042, ; 296: ICSharpCode.SharpZipLib.dll => 0xbadcbf32 => 32
	i32 3159123045, ; 297: System.Reflection.Primitives.dll => 0xbc4c6465 => 13
	i32 3180757527, ; 298: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 58
	i32 3204380047, ; 299: System.Data.dll => 0xbefef58f => 184
	i32 3211777861, ; 300: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 141
	i32 3220365878, ; 301: System.Threading => 0xbff2e236 => 9
	i32 3247949154, ; 302: Mono.Security => 0xc197c562 => 203
	i32 3258312781, ; 303: Xamarin.AndroidX.CardView => 0xc235e84d => 132
	i32 3265893370, ; 304: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 191
	i32 3267021929, ; 305: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 130
	i32 3299363146, ; 306: System.Text.Encoding => 0xc4a8494a => 6
	i32 3300764913, ; 307: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 59
	i32 3303498502, ; 308: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 20
	i32 3315699264, ; 309: System.Composition.Hosting => 0xc5a18e40 => 100
	i32 3317135071, ; 310: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 140
	i32 3317144872, ; 311: System.Data => 0xc5b79d28 => 184
	i32 3340431453, ; 312: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 129
	i32 3346324047, ; 313: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 160
	i32 3353484488, ; 314: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 146
	i32 3353544232, ; 315: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 175
	i32 3358260929, ; 316: System.Text.Json => 0xc82afec1 => 119
	i32 3362522851, ; 317: Xamarin.AndroidX.Core => 0xc86c06e3 => 138
	i32 3366347497, ; 318: Java.Interop => 0xc8a662e9 => 35
	i32 3374999561, ; 319: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 164
	i32 3395150330, ; 320: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 115
	i32 3404865022, ; 321: System.ServiceModel.Internals => 0xcaf21dfe => 190
	i32 3407215217, ; 322: Xamarin.CommunityToolkit => 0xcb15fa71 => 175
	i32 3428513518, ; 323: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 69
	i32 3429136800, ; 324: System.Xml => 0xcc6479a0 => 121
	i32 3430777524, ; 325: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 326: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 143
	i32 3466904072, ; 327: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 53
	i32 3476120550, ; 328: Mono.Android => 0xcf3163e6 => 79
	i32 3476505041, ; 329: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 55
	i32 3485117614, ; 330: System.Text.Json.dll => 0xcfbaacae => 119
	i32 3486566296, ; 331: System.Transactions => 0xcfd0c798 => 185
	i32 3493954962, ; 332: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 134
	i32 3501239056, ; 333: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 130
	i32 3509114376, ; 334: System.Xml.Linq => 0xd128d608 => 122
	i32 3519914379, ; 335: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xd1cda18b => 62
	i32 3536029504, ; 336: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 179
	i32 3545363771, ; 337: System.Composition.AttributedModel => 0xd351f53b => 98
	i32 3567349600, ; 338: System.ComponentModel.Composition.dll => 0xd4a16f60 => 188
	i32 3594787188, ; 339: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 111
	i32 3608519521, ; 340: System.Linq.dll => 0xd715a361 => 196
	i32 3618140916, ; 341: Xamarin.AndroidX.Preference => 0xd7a872f4 => 162
	i32 3627220390, ; 342: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 163
	i32 3632359727, ; 343: Xamarin.Forms.Platform => 0xd881692f => 180
	i32 3633644679, ; 344: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 125
	i32 3638274909, ; 345: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 17
	i32 3641597786, ; 346: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 150
	i32 3657292374, ; 347: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 67
	i32 3672681054, ; 348: Mono.Android.dll => 0xdae8aa5e => 79
	i32 3676310014, ; 349: System.Web.Services.dll => 0xdb2009fe => 189
	i32 3679340867, ; 350: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 46
	i32 3682565725, ; 351: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 131
	i32 3684561358, ; 352: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 134
	i32 3689375977, ; 353: System.Drawing.Common => 0xdbe768e9 => 28
	i32 3691870036, ; 354: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 57
	i32 3718780102, ; 355: Xamarin.AndroidX.Annotation => 0xdda814c6 => 124
	i32 3724971120, ; 356: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 159
	i32 3727607285, ; 357: OpiskeluSovellus.dll => 0xde2ec5f5 => 87
	i32 3748608112, ; 358: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 104
	i32 3758932259, ; 359: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 148
	i32 3765508441, ; 360: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 75
	i32 3786282454, ; 361: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 133
	i32 3787005001, ; 362: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 40
	i32 3822602673, ; 363: Xamarin.AndroidX.Media => 0xe3d849b1 => 157
	i32 3829621856, ; 364: System.Numerics.dll => 0xe4436460 => 112
	i32 3841636137, ; 365: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 68
	i32 3849253459, ; 366: System.Runtime.InteropServices.dll => 0xe56ef253 => 198
	i32 3871054620, ; 367: System.Composition.Runtime => 0xe6bb9b1c => 101
	i32 3885922214, ; 368: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 169
	i32 3896106733, ; 369: System.Collections.Concurrent.dll => 0xe839deed => 4
	i32 3896760992, ; 370: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 138
	i32 3900683505, ; 371: System.Composition.TypedParts => 0xe87fb4f1 => 102
	i32 3920810846, ; 372: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 187
	i32 3921031405, ; 373: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 172
	i32 3924815484, ; 374: Syncfusion.SfSchedule.XForms.dll => 0xe9efee7c => 95
	i32 3928044579, ; 375: System.Xml.ReaderWriter => 0xea213423 => 18
	i32 3931092270, ; 376: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 161
	i32 3945713374, ; 377: System.Data.DataSetExtensions.dll => 0xeb2ecede => 186
	i32 3953953790, ; 378: System.Text.Encoding.CodePages => 0xebac8bfe => 202
	i32 3955647286, ; 379: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 127
	i32 4002654803, ; 380: Microsoft.CodeAnalysis.Workspaces.dll => 0xee93aa53 => 66
	i32 4023392905, ; 381: System.IO.Pipelines => 0xefd01a89 => 107
	i32 4025784931, ; 382: System.Memory => 0xeff49a63 => 108
	i32 4026527876, ; 383: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 61
	i32 4044155772, ; 384: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 78
	i32 4044257358, ; 385: IdentityModel.dll => 0xf10e784e => 33
	i32 4054681211, ; 386: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 193
	i32 4073602200, ; 387: System.Threading.dll => 0xf2ce3c98 => 9
	i32 4078967171, ; 388: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 72
	i32 4085261167, ; 389: Prism.Forms => 0xf380236f => 89
	i32 4105002889, ; 390: Mono.Security.dll => 0xf4ad5f89 => 203
	i32 4126470640, ; 391: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 69
	i32 4131741489, ; 392: System.Net.Http.Formatting => 0xf6455f31 => 110
	i32 4141580284, ; 393: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 39
	i32 4147896353, ; 394: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 193
	i32 4151237749, ; 395: System.Core => 0xf76edc75 => 103
	i32 4152369130, ; 396: IdentityModel.OidcClient => 0xf7801fea => 34
	i32 4160752180, ; 397: Microsoft.CodeAnalysis.VisualBasic => 0xf8000a34 => 64
	i32 4171972157, ; 398: DocoptNet.dll => 0xf8ab3e3d => 30
	i32 4182413190, ; 399: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 154
	i32 4196171640, ; 400: Microsoft.CodeAnalysis => 0xfa1c7f78 => 63
	i32 4213026141, ; 401: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 104
	i32 4245218886, ; 402: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 61
	i32 4260525087, ; 403: System.Buffers => 0xfdf2741f => 96
	i32 4274976490, ; 404: System.Runtime.Numerics => 0xfecef6ea => 14
	i32 4285181886, ; 405: Syncfusion.SfSchedule.XForms.Android => 0xff6aafbe => 94
	i32 4292120959, ; 406: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 154
	i32 4293859396 ; 407: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 55
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [408 x i32] [
	i32 36, i32 64, i32 152, i32 183, i32 86, i32 25, i32 177, i32 19, ; 0..7
	i32 62, i32 166, i32 198, i32 166, i32 120, i32 32, i32 19, i32 133, ; 8..15
	i32 59, i32 167, i32 194, i32 80, i32 131, i32 2, i32 44, i32 147, ; 16..23
	i32 27, i32 8, i32 189, i32 136, i32 151, i32 145, i32 36, i32 37, ; 24..31
	i32 123, i32 112, i32 149, i32 45, i32 25, i32 51, i32 108, i32 99, ; 32..39
	i32 0, i32 58, i32 135, i32 176, i32 3, i32 144, i32 94, i32 54, ; 40..47
	i32 84, i32 105, i32 145, i32 95, i32 156, i32 42, i32 26, i32 88, ; 48..55
	i32 77, i32 185, i32 65, i32 74, i32 12, i32 10, i32 60, i32 82, ; 56..63
	i32 187, i32 200, i32 140, i32 118, i32 172, i32 128, i32 4, i32 99, ; 64..71
	i32 122, i32 192, i32 80, i32 92, i32 39, i32 24, i32 106, i32 101, ; 72..79
	i32 76, i32 28, i32 57, i32 163, i32 8, i32 34, i32 65, i32 183, ; 80..87
	i32 86, i32 149, i32 31, i32 11, i32 15, i32 3, i32 12, i32 165, ; 88..95
	i32 68, i32 127, i32 180, i32 195, i32 153, i32 45, i32 83, i32 105, ; 96..103
	i32 72, i32 37, i32 71, i32 170, i32 160, i32 85, i32 128, i32 78, ; 104..111
	i32 52, i32 42, i32 82, i32 171, i32 51, i32 142, i32 196, i32 197, ; 112..119
	i32 190, i32 165, i32 16, i32 157, i32 137, i32 115, i32 40, i32 15, ; 120..127
	i32 10, i32 181, i32 97, i32 106, i32 126, i32 77, i32 97, i32 56, ; 128..135
	i32 91, i32 199, i32 192, i32 22, i32 17, i32 90, i32 141, i32 29, ; 136..143
	i32 155, i32 174, i32 139, i32 109, i32 199, i32 116, i32 168, i32 182, ; 144..151
	i32 136, i32 114, i32 2, i32 100, i32 7, i32 20, i32 132, i32 107, ; 152..159
	i32 22, i32 167, i32 74, i32 103, i32 144, i32 60, i32 155, i32 182, ; 160..167
	i32 161, i32 49, i32 21, i32 73, i32 89, i32 195, i32 81, i32 176, ; 168..175
	i32 13, i32 33, i32 181, i32 129, i32 24, i32 114, i32 16, i32 158, ; 176..183
	i32 43, i32 98, i32 52, i32 54, i32 81, i32 102, i32 96, i32 153, ; 184..191
	i32 150, i32 88, i32 85, i32 43, i32 116, i32 113, i32 146, i32 178, ; 192..199
	i32 179, i32 46, i32 76, i32 87, i32 73, i32 26, i32 109, i32 75, ; 200..207
	i32 170, i32 23, i32 70, i32 47, i32 156, i32 158, i32 148, i32 67, ; 208..215
	i32 164, i32 124, i32 53, i32 23, i32 92, i32 194, i32 93, i32 18, ; 216..223
	i32 117, i32 110, i32 178, i32 162, i32 6, i32 27, i32 135, i32 1, ; 224..231
	i32 35, i32 186, i32 152, i32 38, i32 118, i32 171, i32 21, i32 71, ; 232..239
	i32 90, i32 50, i32 41, i32 139, i32 143, i32 151, i32 48, i32 70, ; 240..247
	i32 0, i32 111, i32 11, i32 197, i32 168, i32 5, i32 63, i32 14, ; 248..255
	i32 123, i32 120, i32 38, i32 126, i32 202, i32 177, i32 173, i32 201, ; 256..263
	i32 137, i32 121, i32 49, i32 173, i32 169, i32 93, i32 91, i32 44, ; 264..271
	i32 30, i32 7, i32 188, i32 84, i32 174, i32 113, i32 125, i32 56, ; 272..279
	i32 201, i32 117, i32 200, i32 41, i32 142, i32 66, i32 47, i32 147, ; 280..287
	i32 83, i32 48, i32 31, i32 159, i32 5, i32 29, i32 50, i32 191, ; 288..295
	i32 32, i32 13, i32 58, i32 184, i32 141, i32 9, i32 203, i32 132, ; 296..303
	i32 191, i32 130, i32 6, i32 59, i32 20, i32 100, i32 140, i32 184, ; 304..311
	i32 129, i32 160, i32 146, i32 175, i32 119, i32 138, i32 35, i32 164, ; 312..319
	i32 115, i32 190, i32 175, i32 69, i32 121, i32 1, i32 143, i32 53, ; 320..327
	i32 79, i32 55, i32 119, i32 185, i32 134, i32 130, i32 122, i32 62, ; 328..335
	i32 179, i32 98, i32 188, i32 111, i32 196, i32 162, i32 163, i32 180, ; 336..343
	i32 125, i32 17, i32 150, i32 67, i32 79, i32 189, i32 46, i32 131, ; 344..351
	i32 134, i32 28, i32 57, i32 124, i32 159, i32 87, i32 104, i32 148, ; 352..359
	i32 75, i32 133, i32 40, i32 157, i32 112, i32 68, i32 198, i32 101, ; 360..367
	i32 169, i32 4, i32 138, i32 102, i32 187, i32 172, i32 95, i32 18, ; 368..375
	i32 161, i32 186, i32 202, i32 127, i32 66, i32 107, i32 108, i32 61, ; 376..383
	i32 78, i32 33, i32 193, i32 9, i32 72, i32 89, i32 203, i32 69, ; 384..391
	i32 110, i32 39, i32 193, i32 103, i32 34, i32 64, i32 30, i32 154, ; 392..399
	i32 63, i32 104, i32 61, i32 96, i32 14, i32 94, i32 154, i32 55 ; 408..407
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
