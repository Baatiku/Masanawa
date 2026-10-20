.class public abstract Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractSetAddressFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lkh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004R\u001b\u0010 \u001a\u00020\u001b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR*\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010/\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\u001d\u001a\u0004\u00082\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010:\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00107R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010L\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010\u0019\"\u0004\u0008J\u0010KR$\u0010P\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010A\u001a\u0004\u0008N\u0010C\"\u0004\u0008O\u0010ER$\u0010X\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR$\u0010\\\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010A\u001a\u0004\u0008Z\u0010C\"\u0004\u0008[\u0010ER$\u0010d\u001a\u0004\u0018\u00010]8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010c\u00a8\u0006e"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lkh6;",
        "<init>",
        "()V",
        "",
        "initView",
        "I0",
        "K0",
        "H0",
        "B0",
        "Lteam/opay/pay/kyc/base/KycSetAddressReq;",
        "req",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "M0",
        "(Lteam/opay/pay/kyc/base/KycSetAddressReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "addObserver",
        "Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;",
        "l",
        "Lid8;",
        "z0",
        "()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;",
        "addressViewModel",
        "Lkotlin/Function0;",
        "m",
        "Lkotlin/jvm/functions/Function0;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "callback",
        "n",
        "Lteam/opay/pay/kyc/base/KycSetAddressReq;",
        "getRequest",
        "()Lteam/opay/pay/kyc/base/KycSetAddressReq;",
        "setRequest",
        "(Lteam/opay/pay/kyc/base/KycSetAddressReq;)V",
        "request",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "o",
        "A0",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "nodeData",
        "Lteam/opay/pay/kyc/base/KycAddressCallBack;",
        "p",
        "Lteam/opay/pay/kyc/base/KycAddressCallBack;",
        "currentAddress",
        "q",
        "permanentAddress",
        "Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;",
        "r",
        "Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;",
        "currentAddressFragment",
        "",
        "s",
        "Ljava/lang/String;",
        "getBizSecurityId",
        "()Ljava/lang/String;",
        "N0",
        "(Ljava/lang/String;)V",
        "bizSecurityId",
        "t",
        "Z",
        "getIdPage",
        "O0",
        "(Z)V",
        "idPage",
        "u",
        "getIdType",
        "P0",
        "idType",
        "",
        "v",
        "Ljava/lang/Long;",
        "getTaskRecordId",
        "()Ljava/lang/Long;",
        "S0",
        "(Ljava/lang/Long;)V",
        "taskRecordId",
        "w",
        "getTaskId",
        "R0",
        "taskId",
        "Lteam/opay/pay/kyc/base/IdAddress;",
        "x",
        "Lteam/opay/pay/kyc/base/IdAddress;",
        "getMDefaultIdAddress",
        "()Lteam/opay/pay/kyc/base/IdAddress;",
        "Q0",
        "(Lteam/opay/pay/kyc/base/IdAddress;)V",
        "mDefaultIdAddress",
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


# instance fields
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lteam/opay/pay/kyc/base/KycSetAddressReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lteam/opay/pay/kyc/base/KycAddressCallBack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lteam/opay/pay/kyc/base/KycAddressCallBack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Z

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lteam/opay/pay/kyc/base/IdAddress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->l:Lid8;

    .line 49
    .line 50
    new-instance v0, Lf4;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lf4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->o:Lid8;

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->s:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method private final A0()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->o:Lid8;

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

.method public static final C0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lkotlin/Pair;

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final D0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final E0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 27

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkh6;

    .line 8
    .line 9
    iget-object v0, v0, Lkh6;->j:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 12
    .line 13
    .line 14
    move-result v22

    .line 15
    if-eqz v22, :cond_0

    .line 16
    .line 17
    const-string v0, "same_address"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "differ_address"

    .line 21
    .line 22
    :goto_0
    const-string v1, "type"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v2, v1, [Lkotlin/Pair;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object v0, v2, v1

    .line 33
    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "address_page_next_click"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v0, v1

    .line 67
    :goto_1
    const-string v2, ""

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move-object v0, v1

    .line 98
    :goto_2
    if-nez v0, :cond_4

    .line 99
    .line 100
    move-object/from16 v17, v2

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_4
    :goto_3
    move-object/from16 v17, v0

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    :goto_4
    sget v0, Lteam/opay/pay/R$string;->osdk_register_set_address_address_hint:I

    .line 107
    .line 108
    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_3

    .line 113
    :goto_5
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->A0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->A0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 137
    .line 138
    const-wide/16 v3, -0x1

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->e()Lteam/opay/pay/address/Address;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0}, Lteam/opay/pay/address/Address;->a()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    move-wide v11, v5

    .line 153
    goto :goto_6

    .line 154
    :cond_6
    move-wide v11, v3

    .line 155
    :goto_6
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->c()Lteam/opay/pay/address/Address;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0}, Lteam/opay/pay/address/Address;->a()J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    move-wide v13, v5

    .line 170
    goto :goto_7

    .line 171
    :cond_7
    move-wide v13, v3

    .line 172
    :goto_7
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 173
    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->f()Lteam/opay/pay/address/Address;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    invoke-virtual {v0}, Lteam/opay/pay/address/Address;->a()J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    move-wide v15, v5

    .line 187
    goto :goto_8

    .line 188
    :cond_8
    move-wide v15, v3

    .line 189
    :goto_8
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->b()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_9

    .line 198
    :cond_9
    move-object v0, v1

    .line 199
    :goto_9
    if-nez v0, :cond_a

    .line 200
    .line 201
    move-object/from16 v19, v2

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_a
    move-object/from16 v19, v0

    .line 205
    .line 206
    :goto_a
    iget-object v0, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->s:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v5, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->v:Ljava/lang/Long;

    .line 209
    .line 210
    iget-object v6, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->w:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v22, :cond_b

    .line 213
    .line 214
    move-object/from16 v23, v1

    .line 215
    .line 216
    goto :goto_c

    .line 217
    :cond_b
    iget-object v8, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 218
    .line 219
    if-eqz v8, :cond_c

    .line 220
    .line 221
    invoke-virtual {v8}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->e()Lteam/opay/pay/address/Address;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    if-eqz v8, :cond_c

    .line 226
    .line 227
    invoke-virtual {v8}, Lteam/opay/pay/address/Address;->a()J

    .line 228
    .line 229
    .line 230
    move-result-wide v20

    .line 231
    goto :goto_b

    .line 232
    :cond_c
    move-wide/from16 v20, v3

    .line 233
    .line 234
    :goto_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    move-object/from16 v23, v8

    .line 239
    .line 240
    :goto_c
    if-eqz v22, :cond_d

    .line 241
    .line 242
    move-object/from16 v24, v1

    .line 243
    .line 244
    goto :goto_e

    .line 245
    :cond_d
    iget-object v8, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 246
    .line 247
    if-eqz v8, :cond_e

    .line 248
    .line 249
    invoke-virtual {v8}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->c()Lteam/opay/pay/address/Address;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    if-eqz v8, :cond_e

    .line 254
    .line 255
    invoke-virtual {v8}, Lteam/opay/pay/address/Address;->a()J

    .line 256
    .line 257
    .line 258
    move-result-wide v20

    .line 259
    goto :goto_d

    .line 260
    :cond_e
    move-wide/from16 v20, v3

    .line 261
    .line 262
    :goto_d
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    move-object/from16 v24, v8

    .line 267
    .line 268
    :goto_e
    if-eqz v22, :cond_f

    .line 269
    .line 270
    move-object/from16 v25, v1

    .line 271
    .line 272
    goto :goto_f

    .line 273
    :cond_f
    iget-object v8, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 274
    .line 275
    if-eqz v8, :cond_10

    .line 276
    .line 277
    invoke-virtual {v8}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->f()Lteam/opay/pay/address/Address;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    if-eqz v8, :cond_10

    .line 282
    .line 283
    invoke-virtual {v8}, Lteam/opay/pay/address/Address;->a()J

    .line 284
    .line 285
    .line 286
    move-result-wide v3

    .line 287
    :cond_10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    move-object/from16 v25, v3

    .line 292
    .line 293
    :goto_f
    if-eqz v22, :cond_12

    .line 294
    .line 295
    :cond_11
    move-object/from16 v26, v1

    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_12
    iget-object v3, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 299
    .line 300
    if-eqz v3, :cond_13

    .line 301
    .line 302
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->a()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    :cond_13
    if-nez v1, :cond_11

    .line 307
    .line 308
    move-object/from16 v26, v2

    .line 309
    .line 310
    :goto_10
    new-instance v1, Lteam/opay/pay/kyc/base/KycSetAddressReq;

    .line 311
    .line 312
    move-object v8, v1

    .line 313
    move-object/from16 v18, v0

    .line 314
    .line 315
    move-object/from16 v20, v5

    .line 316
    .line 317
    move-object/from16 v21, v6

    .line 318
    .line 319
    invoke-direct/range {v8 .. v26}, Lteam/opay/pay/kyc/base/KycSetAddressReq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iput-object v1, v7, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->n:Lteam/opay/pay/kyc/base/KycSetAddressReq;

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v2, "FILL_ADDRESS_INFO"

    .line 329
    .line 330
    invoke-virtual {v0, v1, v7, v2}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;->J(Lteam/opay/pay/kyc/base/KycSetAddressReq;Lag8;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 334
    .line 335
    return-object v0
.end method

.method public static final F0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lkh6;

    .line 7
    .line 8
    iget-object v0, v0, Lkh6;->h:Landroidx/fragment/app/FragmentContainerView;

    .line 9
    .line 10
    const-string v1, "permanentAddress"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    xor-int/lit8 v1, p2, 0x1

    .line 16
    .line 17
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->K0()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 28
    .line 29
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string/jumbo p2, "yes"

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string p2, "no"

    .line 36
    .line 37
    :goto_1
    const-string v0, "type"

    .line 38
    .line 39
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-array v2, p1, [Lkotlin/Pair;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    aput-object p2, v2, p1

    .line 47
    .line 48
    const/16 v5, 0xc

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v1, "same_as_current_click"

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    move-object v0, p0

    .line 56
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->H0()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static final G0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
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

.method public static final J0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "addressCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->H0()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final L0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "addressCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->H0()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->G0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initView()V
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
    const-string v2, "address_page_show"

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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "REGISTER"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "kyc1_address"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, ""

    .line 35
    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lkh6;

    .line 55
    .line 56
    iget-object v2, v1, Lkh6;->m:Lteam/opay/core/android/views/OpayActionBar;

    .line 57
    .line 58
    sget v1, Lteam/opay/pay/R$string;->osdk_help:I

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v1, "getString(...)"

    .line 65
    .line 66
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Lm4;

    .line 70
    .line 71
    invoke-direct {v5, p0, v0}, Lm4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lkh6;

    .line 85
    .line 86
    iget-object v0, v0, Lkh6;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    sget v1, Lteam/opay/pay/R$string;->residential_address:I

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lkh6;

    .line 102
    .line 103
    iget-object v0, v0, Lkh6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    sget v1, Lteam/opay/pay/R$drawable;->osdk_bg_e2f5eb_radius_8:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lkh6;

    .line 115
    .line 116
    iget-object v0, v0, Lkh6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    sget v1, Lteam/opay/pay/R$string;->osdk_address_top_command:I

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lkh6;

    .line 132
    .line 133
    iget-object v0, v0, Lkh6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sget v2, Lteam/opay/pay/R$color;->color_00B876:I

    .line 140
    .line 141
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lkh6;

    .line 153
    .line 154
    iget-object v0, v0, Lkh6;->m:Lteam/opay/core/android/views/OpayActionBar;

    .line 155
    .line 156
    new-instance v1, Ln4;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Ln4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lkh6;

    .line 169
    .line 170
    iget-object v0, v0, Lkh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 171
    .line 172
    const-string v1, "nextStep"

    .line 173
    .line 174
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lo4;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lo4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->I0()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lkh6;

    .line 193
    .line 194
    iget-object v0, v0, Lkh6;->j:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 195
    .line 196
    new-instance v1, Lp4;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Lp4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->u0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->v0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->L0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->E0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->J0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycAddressCallBack;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->x0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/ErrorMsg;Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->w0(Lteam/opay/pay/kyc/base/ErrorMsg;Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->C0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->F0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->D0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->y0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkh6;

    .line 6
    .line 7
    iget-object p0, p0, Lkh6;->f:Lteam/opay/core/android/views/PulseLoaderView;

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

.method public static final v0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    new-instance v6, Lh4;

    .line 16
    .line 17
    invoke-direct {v6, p1, p0}, Lh4;-><init>(Lteam/opay/pay/kyc/base/ErrorMsg;Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 18
    .line 19
    .line 20
    const/16 v7, 0xe

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final w0(Lteam/opay/pay/kyc/base/ErrorMsg;Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/ErrorMsg;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "90052"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    iget-object p0, p1, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->r:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, "currentAddressFragment"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->E0()V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final x0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->n:Lteam/opay/pay/kyc/base/KycSetAddressReq;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->M0(Lteam/opay/pay/kyc/base/KycSetAddressReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final y0(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public B0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final H0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkh6;

    .line 6
    .line 7
    iget-object v0, v0, Lkh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lkh6;

    .line 14
    .line 15
    iget-object v1, v1, Lkh6;->j:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->d()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->p:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->q:Lteam/opay/pay/kyc/base/KycAddressCallBack;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycAddressCallBack;->d()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    :cond_3
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final I0()V
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/pay/kyc/base/KycAddressParam;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->A0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->x:Lteam/opay/pay/kyc/base/IdAddress;

    .line 8
    .line 9
    const-string v4, "current"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v2, 0x1

    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/base/KycAddressParam;-><init>(Lteam/opay/pay/kyc/base/KycNodeData;ZLteam/opay/pay/kyc/base/IdAddress;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->J:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$Companion;

    .line 18
    .line 19
    invoke-virtual {v0, v6}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$Companion;->a(Lteam/opay/pay/kyc/base/KycAddressParam;)Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->r:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 24
    .line 25
    new-instance v1, Lq4;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lq4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->Z0(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    sget v1, Lteam/opay/pay/R$id;->currentAddress:I

    .line 34
    .line 35
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final K0()V
    .locals 9

    .line 1
    new-instance v8, Lteam/opay/pay/kyc/base/KycAddressParam;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->A0()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v6, 0x16

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const-string v4, "permanent"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v8

    .line 16
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/base/KycAddressParam;-><init>(Lteam/opay/pay/kyc/base/KycNodeData;ZLteam/opay/pay/kyc/base/IdAddress;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->J:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$Companion;

    .line 20
    .line 21
    invoke-virtual {v0, v8}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$Companion;->a(Lteam/opay/pay/kyc/base/KycAddressParam;)Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lg4;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lg4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->Z0(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    sget v1, Lteam/opay/pay/R$id;->permanentAddress:I

    .line 34
    .line 35
    invoke-static {p0, v1, v0}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public abstract M0(Lteam/opay/pay/kyc/base/KycSetAddressReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/KycSetAddressReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final N0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->s:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final O0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final Q0(Lteam/opay/pay/kyc/base/IdAddress;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/IdAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->x:Lteam/opay/pay/kyc/base/IdAddress;

    .line 2
    .line 3
    return-void
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final S0(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->v:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Li4;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Li4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lj4;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lj4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;->C()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lk4;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lk4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;->F()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Ll4;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Ll4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
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
    const-string v2, "address_page_back_click"

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
    .locals 1
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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->B0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->initView()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->addObserver()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final z0()Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetAddressFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractSetAddressViewModel;

    .line 8
    .line 9
    return-object v0
.end method
