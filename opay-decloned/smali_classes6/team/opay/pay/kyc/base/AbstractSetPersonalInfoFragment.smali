.class public abstract Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractSetPersonalInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$Companion;,
        Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lnh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000 \u009f\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u00a0\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u001d\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J!\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J3\u0010\"\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0004J)\u0010*\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\'2\u0008\u0008\u0002\u0010)\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0019\u0010-\u001a\u00020\u00052\u0008\u0008\u0002\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008-\u0010.J!\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00122\u0008\u0008\u0002\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00080\u00101J!\u00102\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00122\u0008\u0008\u0002\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00082\u00101J\u001f\u00103\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00083\u00104J\u001f\u00105\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00085\u00104J\u001f\u00106\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00122\u0006\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00086\u00104J\u000f\u00107\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00087\u0010\u0004J\u001f\u0010<\u001a\u00020\u00052\u0006\u00109\u001a\u0002082\u0006\u0010;\u001a\u00020:H&\u00a2\u0006\u0004\u0008<\u0010=J!\u0010B\u001a\u00020\u00052\u0006\u0010?\u001a\u00020>2\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008D\u0010EJ1\u0010F\u001a\u00020\u00052\u0006\u0010 \u001a\u00020>2\u0006\u0010!\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008H\u0010\u0004R\u001b\u0010N\u001a\u00020I8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u001b\u0010S\u001a\u00020O8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010K\u001a\u0004\u0008Q\u0010RR\"\u0010X\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010E\"\u0004\u0008W\u0010.R\"\u0010\\\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010U\u001a\u0004\u0008Z\u0010E\"\u0004\u0008[\u0010.R\u0016\u0010^\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010UR\"\u0010b\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010U\u001a\u0004\u0008`\u0010E\"\u0004\u0008a\u0010.R\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u001b\u0010o\u001a\u00020k8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010K\u001a\u0004\u0008m\u0010nR\u0018\u0010r\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u001b\u0010w\u001a\u00020s8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010K\u001a\u0004\u0008u\u0010vR\"\u0010{\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010U\u001a\u0004\u0008y\u0010E\"\u0004\u0008z\u0010.R%\u0010\u0082\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008|\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R)\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0083\u0001\u0010}\u001a\u0005\u0008\u0084\u0001\u0010\u007f\"\u0006\u0008\u0085\u0001\u0010\u0081\u0001R\'\u0010\u008a\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0087\u0001\u0010}\u001a\u0005\u0008\u0088\u0001\u0010\u007f\"\u0006\u0008\u0089\u0001\u0010\u0081\u0001R\'\u0010\u008e\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u008b\u0001\u0010}\u001a\u0005\u0008\u008c\u0001\u0010\u007f\"\u0006\u0008\u008d\u0001\u0010\u0081\u0001R,\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u008f\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R,\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0097\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lnh6;",
        "<init>",
        "()V",
        "",
        "initView",
        "A1",
        "d1",
        "i1",
        "j1",
        "g1",
        "h1",
        "",
        "Lteam/opay/pay/kyc/customer/ErrorInfo;",
        "list",
        "T0",
        "(Ljava/util/List;)V",
        "",
        "shouldShow",
        "",
        "message",
        "N0",
        "(ZLjava/lang/String;)V",
        "k1",
        "inputStr",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "inputView",
        "M0",
        "(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V",
        "e1",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "inputText",
        "errorText",
        "R0",
        "(Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V",
        "K1",
        "F1",
        "text",
        "",
        "tag",
        "goNext",
        "N1",
        "(Ljava/lang/String;IZ)V",
        "isError",
        "C1",
        "(Z)V",
        "check",
        "U0",
        "(ZZ)V",
        "z1",
        "Z0",
        "(ZZ)I",
        "Y0",
        "a1",
        "f1",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "req",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "E1",
        "(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onBackPressed",
        "()Z",
        "P0",
        "(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V",
        "addObserver",
        "Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;",
        "l",
        "Lid8;",
        "c1",
        "()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;",
        "taskViewModels",
        "Lteam/opay/pay/onboarding/AccountThirdStepViewModel;",
        "m",
        "W0",
        "()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;",
        "accountThirdStepViewModel",
        "n",
        "Z",
        "getFirstValidate",
        "setFirstValidate",
        "firstValidate",
        "o",
        "getMiddleValidate",
        "setMiddleValidate",
        "middleValidate",
        "p",
        "lastValidate",
        "q",
        "getFocusValidate",
        "setFocusValidate",
        "focusValidate",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "r",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "mGender",
        "Ljava/util/Date;",
        "s",
        "Ljava/util/Date;",
        "selectDate",
        "Ljava/text/SimpleDateFormat;",
        "t",
        "X0",
        "()Ljava/text/SimpleDateFormat;",
        "formatter",
        "u",
        "Lteam/opay/pay/kyc/base/BasicInfoReq;",
        "basicInfoReq",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "v",
        "b1",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "nodeData",
        "w",
        "getNeedRealName",
        "setNeedRealName",
        "needRealName",
        "x",
        "Ljava/lang/String;",
        "getBizSecurityId",
        "()Ljava/lang/String;",
        "G1",
        "(Ljava/lang/String;)V",
        "bizSecurityId",
        "y",
        "getIdType",
        "I1",
        "idType",
        "z",
        "getFirstName",
        "H1",
        "firstName",
        "A",
        "getLastName",
        "J1",
        "lastName",
        "",
        "B",
        "Ljava/lang/Long;",
        "getTaskRecordId",
        "()Ljava/lang/Long;",
        "M1",
        "(Ljava/lang/Long;)V",
        "taskRecordId",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "C",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getTaskNodeData",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "L1",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
        "D",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final D:Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lteam/opay/core/api/GraphQL$Gender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lteam/opay/pay/kyc/base/BasicInfoReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final v:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Z

.field public x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->D:Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v2, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v4, v5, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v6, p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->l:Lid8;

    .line 49
    .line 50
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$6;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-class v1, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$8;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$8;-><init>(Lid8;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$9;

    .line 76
    .line 77
    invoke-direct {v3, v5, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$10;

    .line 81
    .line 82
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->m:Lid8;

    .line 90
    .line 91
    new-instance v0, Lm6;

    .line 92
    .line 93
    invoke-direct {v0}, Lm6;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->t:Lid8;

    .line 101
    .line 102
    new-instance v0, Ln6;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Ln6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->v:Lid8;

    .line 112
    .line 113
    const-string v0, ""

    .line 114
    .line 115
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->x:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A:Ljava/lang/String;

    .line 120
    .line 121
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->s1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final A1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lnh6;

    .line 20
    .line 21
    iget-object v0, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lnh6;

    .line 50
    .line 51
    iget-object v0, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lnh6;

    .line 80
    .line 81
    iget-object v0, v0, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/16 v3, 0x8

    .line 88
    .line 89
    if-ne v0, v3, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lnh6;

    .line 96
    .line 97
    iget-object v0, v0, Lnh6;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v3, :cond_1

    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lnh6;

    .line 110
    .line 111
    iget-object v0, v0, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v3, :cond_1

    .line 118
    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "dob"

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lnh6;

    .line 139
    .line 140
    iget-object v3, v3, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_3

    .line 155
    .line 156
    :cond_2
    const/4 v3, 0x1

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    const/4 v3, 0x0

    .line 159
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-string v5, "gender"

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    iget-object v4, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 172
    .line 173
    if-eqz v4, :cond_5

    .line 174
    .line 175
    :cond_4
    const/4 v4, 0x1

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    const/4 v4, 0x0

    .line 178
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Lnh6;

    .line 183
    .line 184
    iget-object v5, v5, Lnh6;->A:Landroidx/appcompat/widget/AppCompatButton;

    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    :cond_6
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public static synthetic B0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->w1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final B1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->L0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->y1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->C1(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: refreshByGender"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic E0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->o1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lteam/opay/pay/R$string;->please_input_you_correct_name:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v0, "getString(...)"

    .line 25
    .line 26
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-eq v0, v1, :cond_4

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->p:Z

    .line 61
    .line 62
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const-string v0, "lastError"

    .line 73
    .line 74
    const-string v1, "lastNameInput"

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lnh6;

    .line 83
    .line 84
    iget-object v3, p1, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 85
    .line 86
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lnh6;

    .line 94
    .line 95
    iget-object v4, p1, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v7, 0x8

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    move-object v2, p0

    .line 106
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lnh6;

    .line 116
    .line 117
    iget-object v3, p1, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 118
    .line 119
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lnh6;

    .line 127
    .line 128
    iget-object v4, p1, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v7, 0x4

    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v5, 0x0

    .line 136
    move-object v2, p0

    .line 137
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->o:Z

    .line 153
    .line 154
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    const-string v0, "middleError"

    .line 165
    .line 166
    const-string v1, "middleNameInput"

    .line 167
    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lnh6;

    .line 175
    .line 176
    iget-object v3, p1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 177
    .line 178
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lnh6;

    .line 186
    .line 187
    iget-object v4, p1, Lnh6;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v7, 0x8

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v6, 0x0

    .line 197
    move-object v2, p0

    .line 198
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Lnh6;

    .line 208
    .line 209
    iget-object v3, p1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 210
    .line 211
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lnh6;

    .line 219
    .line 220
    iget-object v4, p1, Lnh6;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/4 v7, 0x4

    .line 226
    const/4 v8, 0x0

    .line 227
    const/4 v5, 0x0

    .line 228
    move-object v2, p0

    .line 229
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_4
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->n:Z

    .line 244
    .line 245
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    const-string v0, "firstError"

    .line 256
    .line 257
    const-string v1, "firstNameInput"

    .line 258
    .line 259
    if-eqz p1, :cond_5

    .line 260
    .line 261
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Lnh6;

    .line 266
    .line 267
    iget-object v3, p1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 268
    .line 269
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lnh6;

    .line 277
    .line 278
    iget-object v4, p1, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 279
    .line 280
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const/16 v7, 0x8

    .line 284
    .line 285
    const/4 v8, 0x0

    .line 286
    const/4 v5, 0x0

    .line 287
    const/4 v6, 0x0

    .line 288
    move-object v2, p0

    .line 289
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Lnh6;

    .line 298
    .line 299
    iget-object v3, p1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 300
    .line 301
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Lnh6;

    .line 309
    .line 310
    iget-object v4, p1, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    .line 312
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const/4 v7, 0x4

    .line 316
    const/4 v8, 0x0

    .line 317
    const/4 v5, 0x0

    .line 318
    move-object v2, p0

    .line 319
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 323
    .line 324
    .line 325
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 326
    .line 327
    return-object p0
.end method

.method public static final G0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v2, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    const-string v0, "lastNameInput"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnh6;

    .line 19
    .line 20
    iget-object v3, v0, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const-string v0, "lastError"

    .line 23
    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v1, p0

    .line 34
    move-object v5, p1

    .line 35
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final H0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->d1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final I0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lnh6;

    .line 6
    .line 7
    iget-object p0, p0, Lnh6;->u:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final J0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final K0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->u:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->u:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->E1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static final L0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->T0(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lteam/opay/pay/kyc/customer/ErrorInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ","

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-lez p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "substring(...)"

    .line 68
    .line 69
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method

.method public static synthetic O0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N0(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: decorateGenderError"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic O1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N1(Ljava/lang/String;IZ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: validate"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic Q0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_2

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x4

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    sget p4, Lteam/opay/pay/R$string;->field_error_only_letters:I

    .line 13
    .line 14
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->P0(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p1, "Super calls with default arguments not supported in this target, function: decorateInputError"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static synthetic S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_2

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x4

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    sget p4, Lteam/opay/pay/R$string;->field_error_only_letters:I

    .line 13
    .line 14
    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->R0(Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p1, "Super calls with default arguments not supported in this target, function: decorateNameError"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static final V0()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final X0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method private final b1()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->v:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d1()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lnh6;

    .line 30
    .line 31
    iget-object v1, v1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lnh6;

    .line 54
    .line 55
    iget-object v2, v2, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->q:Z

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    iput-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->q:Z

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lnh6;

    .line 99
    .line 100
    iget-object v5, v5, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 101
    .line 102
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    xor-int/2addr v5, v4

    .line 107
    iput-boolean v5, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->n:Z

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_0

    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lnh6;

    .line 120
    .line 121
    iget-object v5, v5, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_1

    .line 128
    .line 129
    :cond_0
    const/4 v3, 0x1

    .line 130
    :cond_1
    iput-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->o:Z

    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lnh6;

    .line 137
    .line 138
    iget-object v3, v3, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 139
    .line 140
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    xor-int/2addr v3, v4

    .line 145
    iput-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->p:Z

    .line 146
    .line 147
    :cond_2
    iget-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->n:Z

    .line 148
    .line 149
    if-nez v3, :cond_3

    .line 150
    .line 151
    iget-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->w:Z

    .line 152
    .line 153
    if-nez v3, :cond_3

    .line 154
    .line 155
    invoke-virtual {p0, v0, v4, v4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N1(Ljava/lang/String;IZ)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->o:Z

    .line 160
    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-lez v0, :cond_4

    .line 168
    .line 169
    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0, v1, v0, v4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N1(Ljava/lang/String;IZ)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_4
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->p:Z

    .line 175
    .line 176
    if-nez v0, :cond_5

    .line 177
    .line 178
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->w:Z

    .line 179
    .line 180
    if-nez v0, :cond_5

    .line 181
    .line 182
    const/4 v0, 0x3

    .line 183
    invoke-virtual {p0, v2, v0, v4}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N1(Ljava/lang/String;IZ)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lnh6;

    .line 192
    .line 193
    iget-object v2, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 194
    .line 195
    const-string v0, "firstNameInput"

    .line 196
    .line 197
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lnh6;

    .line 205
    .line 206
    iget-object v3, v0, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    const-string v0, "firstError"

    .line 209
    .line 210
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0x8

    .line 214
    .line 215
    const/4 v7, 0x0

    .line 216
    const/4 v4, 0x0

    .line 217
    const/4 v5, 0x0

    .line 218
    move-object v1, p0

    .line 219
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lnh6;

    .line 227
    .line 228
    iget-object v2, v0, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 229
    .line 230
    const-string v0, "middleNameInput"

    .line 231
    .line 232
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lnh6;

    .line 240
    .line 241
    iget-object v3, v0, Lnh6;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    const-string v0, "middleError"

    .line 244
    .line 245
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lnh6;

    .line 256
    .line 257
    iget-object v2, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 258
    .line 259
    const-string v0, "lastNameInput"

    .line 260
    .line 261
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    check-cast v0, Lnh6;

    .line 269
    .line 270
    iget-object v3, v0, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    .line 272
    const-string v0, "lastError"

    .line 273
    .line 274
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->K1()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->F1()V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->K0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->L()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lteam/opay/pay/onboarding/register/KycV3Config;->Companion:Lteam/opay/pay/onboarding/register/KycV3Config$Companion;

    .line 18
    .line 19
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/KycV3Config$Companion;->a()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->U(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->O()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lteam/opay/pay/onboarding/register/KycV3Config;->Companion:Lteam/opay/pay/onboarding/register/KycV3Config$Companion;

    .line 45
    .line 46
    invoke-virtual {v3}, Lteam/opay/pay/onboarding/register/KycV3Config$Companion;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->V(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lnh6;

    .line 58
    .line 59
    iget-object v2, v2, Lnh6;->B:Lteam/opay/core/android/views/OpayActionBar;

    .line 60
    .line 61
    new-instance v3, La6;

    .line 62
    .line 63
    invoke-direct {v3, p0}, La6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->k1()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lnh6;

    .line 77
    .line 78
    iget-object v2, v2, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 79
    .line 80
    const-string v3, "firstNameInput"

    .line 81
    .line 82
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lr6;

    .line 86
    .line 87
    invoke-direct {v3, p0}, Lr6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lnh6;

    .line 98
    .line 99
    iget-object v2, v2, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    const-string v3, "firstNameInfo"

    .line 102
    .line 103
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Ls6;

    .line 107
    .line 108
    invoke-direct {v3, p0}, Ls6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lnh6;

    .line 119
    .line 120
    iget-object v2, v2, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 121
    .line 122
    const-string v3, "middleNameInput"

    .line 123
    .line 124
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lt6;

    .line 128
    .line 129
    invoke-direct {v3, p0}, Lt6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v2, v3}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lnh6;

    .line 140
    .line 141
    iget-object v2, v2, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 142
    .line 143
    const-string v3, "lastNameInput"

    .line 144
    .line 145
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Lu6;

    .line 149
    .line 150
    invoke-direct {v3, p0}, Lu6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v3}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lnh6;

    .line 161
    .line 162
    iget-object v2, v2, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    const-string v3, "lastNameInfo"

    .line 165
    .line 166
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Lv6;

    .line 170
    .line 171
    invoke-direct {v3, p0}, Lv6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Lnh6;

    .line 182
    .line 183
    iget-object v2, v2, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 184
    .line 185
    invoke-static {}, Loj2;->e()Landroid/text/InputFilter;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    new-array v4, v1, [Landroid/text/InputFilter;

    .line 190
    .line 191
    aput-object v3, v4, v0

    .line 192
    .line 193
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Lnh6;

    .line 201
    .line 202
    iget-object v2, v2, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 203
    .line 204
    invoke-static {}, Loj2;->e()Landroid/text/InputFilter;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    new-array v4, v1, [Landroid/text/InputFilter;

    .line 209
    .line 210
    aput-object v3, v4, v0

    .line 211
    .line 212
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lnh6;

    .line 220
    .line 221
    iget-object v2, v2, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 222
    .line 223
    invoke-static {}, Loj2;->e()Landroid/text/InputFilter;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 228
    .line 229
    aput-object v3, v1, v0

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Lnh6;

    .line 239
    .line 240
    iget-object v0, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 241
    .line 242
    new-instance v1, Lw6;

    .line 243
    .line 244
    invoke-direct {v1, p0}, Lw6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lnh6;

    .line 255
    .line 256
    iget-object v0, v0, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 257
    .line 258
    new-instance v1, Lb6;

    .line 259
    .line 260
    invoke-direct {v1, p0}, Lb6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lnh6;

    .line 271
    .line 272
    iget-object v0, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 273
    .line 274
    new-instance v1, Lc6;

    .line 275
    .line 276
    invoke-direct {v1, p0}, Lc6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 280
    .line 281
    .line 282
    sget-object v0, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 283
    .line 284
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->h()Ljava/util/Calendar;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->i()Ljava/util/Calendar;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v0}, Lteam/opay/pay/kyc/a;->j()Ljava/util/Calendar;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lnh6;

    .line 301
    .line 302
    iget-object v3, v3, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    .line 304
    const-string v4, "datePickerButton"

    .line 305
    .line 306
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance v4, Ld6;

    .line 310
    .line 311
    invoke-direct {v4, p0, v1, v0, v2}, Ld6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v3, v4}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lnh6;

    .line 322
    .line 323
    iget-object v0, v0, Lnh6;->n:Landroid/view/View;

    .line 324
    .line 325
    const-string v1, "genderMale"

    .line 326
    .line 327
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    new-instance v1, Ll6;

    .line 331
    .line 332
    invoke-direct {v1, p0}, Ll6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lnh6;

    .line 343
    .line 344
    iget-object v0, v0, Lnh6;->k:Landroid/view/View;

    .line 345
    .line 346
    const-string v1, "genderFemale"

    .line 347
    .line 348
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v1, Lp6;

    .line 352
    .line 353
    invoke-direct {v1, p0}, Lp6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Lnh6;

    .line 364
    .line 365
    iget-object v0, v0, Lnh6;->A:Landroidx/appcompat/widget/AppCompatButton;

    .line 366
    .line 367
    const-string v1, "nextStep"

    .line 368
    .line 369
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    new-instance v1, Lq6;

    .line 373
    .line 374
    invoke-direct {v1, p0}, Lq6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->i1()V

    .line 381
    .line 382
    .line 383
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->F0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->H0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->G0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnh6;

    .line 8
    .line 9
    iget-object p0, p0, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    const-string p1, "lastNameInfo"

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->v1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->e1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lnh6;

    .line 9
    .line 10
    iget-object v0, v0, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    const-string v1, "datePickerButton"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkmf;->t(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->s:Ljava/util/Date;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v5, Lo6;

    .line 35
    .line 36
    invoke-direct {v5, p0}, Lo6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 37
    .line 38
    .line 39
    const/16 v8, 0x60

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v2, p1

    .line 45
    move-object v3, p2

    .line 46
    move-object v4, p3

    .line 47
    invoke-static/range {v1 .. v9}, Lqc3;->z(Landroidx/fragment/app/FragmentActivity;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->t1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Date;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->s:Ljava/util/Date;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lnh6;

    .line 13
    .line 14
    iget-object v0, v0, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->X0()Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lnh6;

    .line 32
    .line 33
    iget-object v1, p1, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const-string p1, "datePickerButton"

    .line 36
    .line 37
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lnh6;

    .line 45
    .line 46
    iget-object v2, p1, Lnh6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    const-string p1, "birthdayError"

    .line 49
    .line 50
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v0, p0

    .line 59
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->Q0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static synthetic o0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->V0()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final o1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->e1()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/core/api/GraphQL$Gender;->MALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2, v0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->O0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v1, v0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->D1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->J0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->e1()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/core/api/GraphQL$Gender;->FEMALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v1, v2, v0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->O0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v1, v0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->D1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->m1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "personal_information_verify_next_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->e1()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->q:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->d1()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->q1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->I0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v2, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    const-string v0, "firstNameInput"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnh6;

    .line 19
    .line 20
    iget-object v3, v0, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const-string v0, "firstError"

    .line 23
    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lm7e;->Y()Lkotlin/text/Regex;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_0
    const/16 v6, 0x8

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v1, p0

    .line 55
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lnh6;

    .line 74
    .line 75
    iget-object v0, v0, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    const-string v1, "firstNameInfo"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->M0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->p1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lnh6;

    .line 14
    .line 15
    iget-object v1, v1, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lnh6;

    .line 29
    .line 30
    iget-object p0, p0, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const-string v0, "firstNameInfo"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lnh6;

    .line 23
    .line 24
    iget-object v2, v0, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 25
    .line 26
    const-string v0, "middleNameInput"

    .line 27
    .line 28
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lnh6;

    .line 36
    .line 37
    iget-object v3, v0, Lnh6;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const-string v0, "middleError"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lm7e;->Y()Lkotlin/text/Regex;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    const/4 v4, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v4, 0x0

    .line 67
    :goto_1
    const/16 v6, 0x8

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    move-object v1, p0

    .line 72
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->u1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v2, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    const-string v0, "lastNameInput"

    .line 10
    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnh6;

    .line 19
    .line 20
    iget-object v3, v0, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const-string v0, "lastError"

    .line 23
    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lm7e;->Y()Lkotlin/text/Regex;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_0
    const/16 v6, 0x8

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v1, p0

    .line 55
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lnh6;

    .line 74
    .line 75
    iget-object v0, v0, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    const-string v1, "lastNameInfo"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->M0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->B1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lnh6;

    .line 14
    .line 15
    iget-object v1, v1, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lnh6;

    .line 29
    .line 30
    iget-object p0, p0, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const-string v0, "lastNameInfo"

    .line 33
    .line 34
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->l1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final x1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnh6;

    .line 8
    .line 9
    iget-object p0, p0, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    const-string p1, "firstNameInfo"

    .line 12
    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic y0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Date;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->n1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/util/Date;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lnh6;

    .line 8
    .line 9
    iget-object p1, p1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, p0

    .line 24
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->O1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static synthetic z0(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->x1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final C1(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z1(ZZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->U0(ZZ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 28
    .line 29
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-virtual {p0, v2, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z1(ZZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->U0(ZZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A1()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public abstract E1(Lteam/opay/pay/kyc/base/BasicInfoReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/BasicInfoReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final F1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->u:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "FILL_BASIC_INFO"

    .line 10
    .line 11
    invoke-virtual {v1, v0, p0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->R(Lteam/opay/pay/kyc/base/BasicInfoReq;Lag8;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final G1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final H1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final I1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final J1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final K1()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "name"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lnh6;

    .line 21
    .line 22
    iget-object v1, v1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lnh6;

    .line 45
    .line 46
    iget-object v3, v3, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lnh6;

    .line 69
    .line 70
    iget-object v4, v4, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    move-object v8, v1

    .line 89
    move-object v9, v3

    .line 90
    move-object v10, v4

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move-object v8, v2

    .line 93
    move-object v9, v8

    .line 94
    move-object v10, v9

    .line 95
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v3, "dob"

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lnh6;

    .line 112
    .line 113
    iget-object v1, v1, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v11, v1

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    move-object v11, v2

    .line 126
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "gender"

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget-object v1, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 139
    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Gender;->getValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_2

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_2
    :goto_2
    move-object v2, v1

    .line 150
    goto :goto_4

    .line 151
    :cond_3
    :goto_3
    sget-object v1, Lteam/opay/core/api/GraphQL$Gender;->MALE:Lteam/opay/core/api/GraphQL$Gender;

    .line 152
    .line 153
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Gender;->getValue()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    :goto_4
    move-object v12, v2

    .line 159
    new-instance v1, Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 160
    .line 161
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->b1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->b1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    iget-object v13, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->x:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v14, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->B:Ljava/lang/Long;

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Q()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    const/16 v17, 0x400

    .line 194
    .line 195
    const/16 v18, 0x0

    .line 196
    .line 197
    const/16 v16, 0x0

    .line 198
    .line 199
    move-object v5, v1

    .line 200
    invoke-direct/range {v5 .. v18}, Lteam/opay/pay/kyc/base/BasicInfoReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    .line 202
    .line 203
    iput-object v1, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->u:Lteam/opay/pay/kyc/base/BasicInfoReq;

    .line 204
    .line 205
    return-void
.end method

.method public final L1(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->C:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method

.method public final M0(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x5

    .line 16
    if-lt v3, v5, :cond_3

    .line 17
    .line 18
    iget-object v3, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v6, 0x1

    .line 25
    const-string v7, "substring(...)"

    .line 26
    .line 27
    const-string v8, "toLowerCase(...)"

    .line 28
    .line 29
    const-string v9, "getDefault(...)"

    .line 30
    .line 31
    if-le v3, v5, :cond_1

    .line 32
    .line 33
    iget-object v3, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v15, 0x6

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    iget-object v3, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->z:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    .line 89
    :goto_0
    iget-object v10, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-le v10, v5, :cond_2

    .line 96
    .line 97
    iget-object v10, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/16 v16, 0x6

    .line 135
    .line 136
    const/16 v17, 0x0

    .line 137
    .line 138
    const/4 v14, 0x0

    .line 139
    const/4 v15, 0x0

    .line 140
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_2

    .line 145
    .line 146
    iget-object v1, v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->A:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const/4 v4, 0x1

    .line 152
    goto :goto_1

    .line 153
    :cond_2
    move v4, v3

    .line 154
    :cond_3
    :goto_1
    invoke-static {v2, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final M1(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->B:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final N0(ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, "genderError"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnh6;

    .line 22
    .line 23
    iget-object v0, v0, Lnh6;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->C1(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final N1(Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->w:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->W0()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v0, "getViewLifecycleOwner(...)"

    .line 24
    .line 25
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->b1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v3, p1

    .line 37
    move v4, p2

    .line 38
    move v5, p3

    .line 39
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->v(Lag8;Ljava/lang/String;IZLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final P0(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/AppCompatTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "inputText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "message"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    sget p2, Lteam/opay/pay/R$drawable;->osdk_register_input_error:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget p2, Lteam/opay/pay/R$drawable;->osdk_register_input_bg:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final R0(Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    sget p2, Lteam/opay/pay/R$drawable;->osdk_register_input_error:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget p2, Lteam/opay/pay/R$drawable;->osdk_register_input_bg:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final T0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/customer/ErrorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/kyc/customer/ErrorInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    packed-switch v2, :pswitch_data_1

    .line 34
    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :pswitch_0
    const-string v2, "90008"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :pswitch_1
    const-string v2, "90007"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :pswitch_2
    const-string v2, "90006"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :pswitch_3
    const-string v2, "90005"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_6

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :pswitch_4
    const-string v2, "02404"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lnh6;

    .line 93
    .line 94
    iget-object v1, v1, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    const-string v2, "datePickerButton"

    .line 97
    .line 98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lnh6;

    .line 106
    .line 107
    iget-object v2, v2, Lnh6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    const-string v5, "birthdayError"

    .line 110
    .line 111
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    move-object v3, v0

    .line 122
    :goto_1
    invoke-virtual {p0, v1, v2, v4, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->P0(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_5
    const-string v2, "02403"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_2

    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_2
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-nez v0, :cond_3

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    move-object v3, v0

    .line 144
    :goto_2
    invoke-virtual {p0, v4, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->N0(ZLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_6
    const-string v2, "02402"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lnh6;

    .line 163
    .line 164
    iget-object v1, v1, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 165
    .line 166
    const-string v2, "lastNameInput"

    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lnh6;

    .line 176
    .line 177
    iget-object v2, v2, Lnh6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    const-string v5, "lastError"

    .line 180
    .line 181
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-nez v0, :cond_5

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    move-object v3, v0

    .line 192
    :goto_3
    invoke-virtual {p0, v1, v2, v4, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->P0(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_7
    const-string v2, "02401"

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_6

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lnh6;

    .line 211
    .line 212
    iget-object v1, v1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 213
    .line 214
    const-string v2, "firstNameInput"

    .line 215
    .line 216
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lnh6;

    .line 224
    .line 225
    iget-object v2, v2, Lnh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    const-string v5, "firstError"

    .line 228
    .line 229
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ErrorInfo;->getMsg()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-nez v0, :cond_7

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_7
    move-object v3, v0

    .line 240
    :goto_4
    invoke-virtual {p0, v1, v2, v4, v3}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->P0(Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;ZLjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_8
    :goto_5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_9
    return-void

    .line 251
    :pswitch_data_0
    .packed-switch 0x2bbebf3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :pswitch_data_1
    .packed-switch 0x339c7be
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final U0(ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->k:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->Z0(ZZ)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lnh6;

    .line 23
    .line 24
    iget-object v0, v0, Lnh6;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_icon_female_normal:I

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, Lxie;->c(Landroid/widget/TextView;IIILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lnh6;

    .line 41
    .line 42
    iget-object v0, v0, Lnh6;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    const-string v1, "genderFemaleName"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->Y0(ZZ)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v0, v1}, Lck3;->a(Landroid/widget/TextView;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->a1(ZZ)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lnh6;

    .line 65
    .line 66
    iget-object p2, p2, Lnh6;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final W0()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y0(ZZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget p1, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lteam/opay/pay/R$color;->osdk_color_262626:I

    .line 12
    .line 13
    :goto_0
    return p1
.end method

.method public final Z0(ZZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_bg_gender_select_error:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_bg_gender_select:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lteam/opay/pay/R$drawable;->osdk_register_input_bg:I

    .line 12
    .line 13
    :goto_0
    return p1
.end method

.method public final a1(ZZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget p1, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lteam/opay/pay/R$color;->black_85:I

    .line 12
    .line 13
    :goto_0
    return p1
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->W0()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Le6;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Le6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->W0()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lf6;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lf6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->W0()Lteam/opay/pay/onboarding/AccountThirdStepViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/AccountThirdStepViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lg6;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lg6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lh6;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lh6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Li6;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Li6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lj6;

    .line 139
    .line 140
    invoke-direct {v2, p0}, Lj6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Lk6;

    .line 164
    .line 165
    invoke-direct {v2, p0}, Lk6;-><init>(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;

    .line 169
    .line 170
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, "firstNameInfo"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lnh6;

    .line 23
    .line 24
    iget-object v0, v0, Lnh6;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const-string v2, "lastNameInfo"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public f1()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dob"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lnh6;

    .line 16
    .line 17
    iget-object v2, v2, Lnh6;->e:Landroidx/constraintlayout/widget/Group;

    .line 18
    .line 19
    const-string v3, "dobGroup"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->B(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->G()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lnh6;

    .line 53
    .line 54
    iget-object v2, v2, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->C(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lnh6;

    .line 72
    .line 73
    iget-object v1, v1, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lnh6;

    .line 83
    .line 84
    iget-object v1, v1, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 87
    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lnh6;

    .line 96
    .line 97
    iget-object v0, v0, Lnh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method public final h1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->I()Lteam/opay/core/api/GraphQL$Gender;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "gender"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lnh6;

    .line 26
    .line 27
    iget-object v2, v2, Lnh6;->m:Landroidx/constraintlayout/widget/Group;

    .line 28
    .line 29
    const-string v3, "genderGroup"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->B(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->r:Lteam/opay/core/api/GraphQL$Gender;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {p0, v3, v0, v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->D1(Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->C(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lnh6;

    .line 70
    .line 71
    iget-object v1, v1, Lnh6;->n:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lnh6;

    .line 81
    .line 82
    iget-object v1, v1, Lnh6;->n:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lnh6;

    .line 92
    .line 93
    iget-object v1, v1, Lnh6;->k:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lnh6;

    .line 103
    .line 104
    iget-object v1, v1, Lnh6;->k:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final i1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->j1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->g1()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->h1()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final j1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lnh6;

    .line 16
    .line 17
    iget-object v2, v2, Lnh6;->y:Landroidx/constraintlayout/widget/Group;

    .line 18
    .line 19
    const-string v3, "nameGroup"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->B(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->H()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lnh6;

    .line 59
    .line 60
    iget-object v2, v2, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->K()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lnh6;

    .line 84
    .line 85
    iget-object v2, v2, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->J()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lnh6;

    .line 109
    .line 110
    iget-object v2, v2, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->C(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lnh6;

    .line 128
    .line 129
    iget-object v1, v1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lnh6;

    .line 139
    .line 140
    iget-object v1, v1, Lnh6;->h:Landroidx/appcompat/widget/AppCompatEditText;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lnh6;

    .line 150
    .line 151
    iget-object v1, v1, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lnh6;

    .line 161
    .line 162
    iget-object v1, v1, Lnh6;->s:Landroidx/appcompat/widget/AppCompatEditText;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lnh6;

    .line 172
    .line 173
    iget-object v1, v1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lnh6;

    .line 183
    .line 184
    iget-object v1, v1, Lnh6;->w:Landroidx/appcompat/widget/AppCompatEditText;

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final k1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, -0x694c8387

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_4

    .line 17
    .line 18
    const v2, 0x3f10eb8

    .line 19
    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const v2, 0x637c72a0

    .line 24
    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v1, "CONFIRM"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lnh6;

    .line 43
    .line 44
    iget-object v0, v0, Lnh6;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    sget v1, Lteam/opay/pay/R$string;->osdk_review_personal_infomation:I

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lnh6;

    .line 60
    .line 61
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    sget v1, Lteam/opay/pay/R$string;->osdk_review_personal_desc:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lnh6;

    .line 77
    .line 78
    iget-object v0, v0, Lnh6;->A:Landroidx/appcompat/widget/AppCompatButton;

    .line 79
    .line 80
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_2
    const-string v1, "ENTER"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lnh6;

    .line 105
    .line 106
    iget-object v0, v0, Lnh6;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    sget v1, Lteam/opay/pay/R$string;->osdk_enter_personal_information:I

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lnh6;

    .line 122
    .line 123
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    sget v1, Lteam/opay/pay/R$string;->osdk_enter_personal_desc:I

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_4
    const-string v1, "VERIFY"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    :goto_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lnh6;

    .line 153
    .line 154
    iget-object v0, v0, Lnh6;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    sget v1, Lteam/opay/pay/R$string;->osdk_verify_your_identity:I

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lnh6;

    .line 170
    .line 171
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    sget v1, Lteam/opay/pay/R$string;->osdk_verify_your_desc:I

    .line 174
    .line 175
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->F()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const/4 v3, 0x1

    .line 184
    new-array v3, v3, [Ljava/lang/Object;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    aput-object v2, v3, v4

    .line 188
    .line 189
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lnh6;

    .line 201
    .line 202
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    sget v2, Lteam/opay/pay/R$color;->color_00B876:I

    .line 209
    .line 210
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lnh6;

    .line 222
    .line 223
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    sget v1, Lteam/opay/pay/R$drawable;->osdk_bg_e2f5eb_radius_8:I

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lnh6;

    .line 235
    .line 236
    iget-object v0, v0, Lnh6;->C:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    const/16 v1, 0x8

    .line 239
    .line 240
    invoke-static {v1}, Lkmf;->g(I)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/4 v3, 0x4

    .line 245
    invoke-static {v3}, Lkmf;->g(I)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {v1}, Lkmf;->g(I)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {v3}, Lkmf;->g(I)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    .line 259
    .line 260
    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "personal_information_verify_back_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onBackPressed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->f1()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->initView()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->addObserver()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->C:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getInfoPageType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "name"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "gender"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->c1()Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "dob"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoViewModel;->Y(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_4
    const-string v0, "page_type"

    .line 83
    .line 84
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Lteam/opay/pay/kyc/a;->v(Ljava/util/List;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "verify_type"

    .line 95
    .line 96
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const/4 v0, 0x2

    .line 101
    new-array v3, v0, [Lkotlin/Pair;

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    aput-object p1, v3, v0

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    aput-object p2, v3, p1

    .line 108
    .line 109
    const/16 v6, 0xc

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    const-string v2, "personal_information_verify_page_show"

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    move-object v1, p0

    .line 117
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final z1(ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnh6;

    .line 6
    .line 7
    iget-object v0, v0, Lnh6;->n:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->Z0(ZZ)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lnh6;

    .line 23
    .line 24
    iget-object v0, v0, Lnh6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_icon_male_normal:I

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, Lxie;->c(Landroid/widget/TextView;IIILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lnh6;

    .line 41
    .line 42
    iget-object v0, v0, Lnh6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    const-string v1, "genderMaleName"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->Y0(ZZ)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v0, v1}, Lck3;->a(Landroid/widget/TextView;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetPersonalInfoFragment;->a1(ZZ)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lnh6;

    .line 65
    .line 66
    iget-object p2, p2, Lnh6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method
