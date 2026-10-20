.class public final Lteam/opay/pay/kyc/view/BankAccountInputV2;
.super Lteam/opay/pay/android/views/BaseAccountEditText;
.source "BankAccountInputV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/view/BankAccountInputV2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00142\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0011\u0010!\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0011\u0010#\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008#\u0010\u001fJ\u0011\u0010$\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008$\u0010\u001bJ\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0011\u0010(\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008(\u0010\"J\u0011\u0010)\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008)\u0010\"J\u0011\u0010*\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008*\u0010\u001bJ\u0011\u0010+\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008+\u0010\u001fJ\u0011\u0010,\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008,\u0010\"J\u0011\u0010-\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008-\u0010\"J\u000f\u0010.\u001a\u0004\u0018\u00010 \u00a2\u0006\u0004\u0008.\u0010\"J\u000f\u0010/\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008/\u0010\u001fJ/\u00104\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00084\u00105J5\u0010;\u001a\u00020\n2\u0006\u00107\u001a\u0002062\u0008\u00108\u001a\u0004\u0018\u00010\u000f2\u0008\u00109\u001a\u0004\u0018\u00010\u000f2\u0008\u0010:\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u001f\u0010>\u001a\u00020\n2\u0006\u0010=\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010A\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ-\u0010F\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010C\u001a\u00020\u00142\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\n0DH\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008H\u0010\u000cJ\u000f\u0010I\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008I\u0010\u000cJ\u0017\u0010J\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008J\u0010KJ+\u0010O\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020\u000f2\n\u0008\u0002\u0010N\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008O\u0010PR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\"\u0010Z\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\"\u0010^\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010U\u001a\u0004\u0008\\\u0010W\"\u0004\u0008]\u0010YR$\u0010e\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR$\u0010i\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010`\u001a\u0004\u0008g\u0010b\"\u0004\u0008h\u0010dR\u0016\u0010m\u001a\u00020j8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010q\u001a\u00020n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010t\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR0\u0010{\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n\u0018\u00010u8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR)\u0010L\u001a\u0004\u0018\u00010\u000f8F@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0080\u0001\u0010\u007f\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R!\u0010\u008a\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0018\u0010\u008c\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010sR4\u0010\u0090\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010u8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008d\u0001\u0010v\u001a\u0005\u0008\u008e\u0001\u0010x\"\u0005\u0008\u008f\u0001\u0010zR1\u0010\u0097\u0001\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R0\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0098\u00012\n\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u00018B@BX\u0082\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Lteam/opay/pay/kyc/view/BankAccountInputV2;",
        "Lteam/opay/pay/android/views/BaseAccountEditText;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onAttachedToWindow",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "channel",
        "bankAccountNumber",
        "o0",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "error",
        "message",
        "E0",
        "(ZLjava/lang/String;)V",
        "Landroid/view/View;",
        "getSearchProgressView",
        "()Landroid/view/View;",
        "getSearchLayoutView",
        "Landroid/widget/ImageView;",
        "getResultTagView",
        "()Landroid/widget/ImageView;",
        "Landroid/widget/TextView;",
        "getSearchTvView",
        "()Landroid/widget/TextView;",
        "getClearnButtonView",
        "getContainerView",
        "Lteam/opay/pay/android/views/KeyboardEditText;",
        "getInputTextView",
        "()Lteam/opay/pay/android/views/KeyboardEditText;",
        "getTagMerchantView",
        "getEditCodeView",
        "getEditDividerView",
        "getBtnBeneficiaryView",
        "getErrorTipsView",
        "getHintTextView",
        "getBankTv",
        "getBankIv",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "A0",
        "(Landroidx/fragment/app/Fragment;IILandroid/content/Intent;)V",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "status",
        "name",
        "errorMessage",
        "code",
        "P",
        "(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "isSending",
        "s0",
        "(ZLandroidx/fragment/app/Fragment;)V",
        "show",
        "H0",
        "(Z)V",
        "autoCancel",
        "Lkotlin/Function0;",
        "callback",
        "w0",
        "(Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V",
        "G0",
        "y0",
        "z0",
        "(Landroidx/fragment/app/Fragment;)V",
        "bankCode",
        "bankName",
        "bankIc",
        "u0",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lmb8;",
        "H",
        "Lmb8;",
        "binding",
        "I",
        "getNormalBackgroundRes",
        "()I",
        "setNormalBackgroundRes",
        "(I)V",
        "normalBackgroundRes",
        "J",
        "getErrorBackgroundRes",
        "setErrorBackgroundRes",
        "errorBackgroundRes",
        "K",
        "Ljava/lang/Integer;",
        "getSearchNormalBackgroundRes",
        "()Ljava/lang/Integer;",
        "setSearchNormalBackgroundRes",
        "(Ljava/lang/Integer;)V",
        "searchNormalBackgroundRes",
        "L",
        "getSearchErrorBackgroundRes",
        "setSearchErrorBackgroundRes",
        "searchErrorBackgroundRes",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils;",
        "M",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils;",
        "accountUtil",
        "Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "N",
        "Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "viewModel",
        "O",
        "Z",
        "isAccountValid",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/functions/Function1;",
        "getOnAccountValidCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnAccountValidCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onAccountValidCallback",
        "Q",
        "Landroidx/fragment/app/Fragment;",
        "R",
        "Ljava/lang/String;",
        "S",
        "getBankCode",
        "()Ljava/lang/String;",
        "setBankCode",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;",
        "T",
        "Lid8;",
        "getRecoBanksAdapter",
        "()Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;",
        "recoBanksAdapter",
        "U",
        "fillBankInfoed",
        "V",
        "getEnterBankAccountFinish",
        "setEnterBankAccountFinish",
        "enterBankAccountFinish",
        "W",
        "Lkotlin/jvm/functions/Function0;",
        "getOnBankSelectClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnBankSelectClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onBankSelectClick",
        "Lteam/opay/pay/api/UserBanksMate;",
        "value",
        "getUserBanksMate",
        "()Lteam/opay/pay/api/UserBanksMate;",
        "setUserBanksMate",
        "(Lteam/opay/pay/api/UserBanksMate;)V",
        "userBanksMate",
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
.field public H:Lmb8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:I

.field public J:I

.field public K:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public M:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

.field public N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

.field public O:Z

.field public P:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Q:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public R:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public S:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final T:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public U:Z

.field public V:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public W:Lkotlin/jvm/functions/Function0;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/kyc/view/BankAccountInputV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/kyc/view/BankAccountInputV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/android/views/BaseAccountEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lmb8;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lmb8;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 6
    sget p1, Lteam/opay/pay/R$drawable;->nor_focus_f8f8fb_8:I

    iput p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->I:I

    .line 7
    sget p1, Lteam/opay/pay/R$drawable;->error_focus_f8f8fb_8:I

    iput p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->J:I

    .line 8
    sget p1, Lteam/opay/pay/R$drawable;->shape_f0fbf7_12:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->K:Ljava/lang/Integer;

    .line 9
    sget p1, Lteam/opay/pay/R$drawable;->shape_fdf0f4_12:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->L:Ljava/lang/Integer;

    .line 10
    new-instance p1, Lih0;

    invoke-direct {p1, p0}, Lih0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->T:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final B0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "Bankaccount_errortips_click"

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->Q:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->s0(ZLandroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final C0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lmh0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lmh0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final D0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "getData(...)"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p2, Lx7b;->a:Lx7b;

    .line 25
    .line 26
    const-string p3, "bank_name"

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string v0, "bank_code"

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->R:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "channel"

    .line 49
    .line 50
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x3

    .line 55
    new-array v2, v2, [Lkotlin/Pair;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object p3, v2, v3

    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    aput-object v0, v2, p3

    .line 62
    .line 63
    const/4 p3, 0x2

    .line 64
    aput-object v1, v2, p3

    .line 65
    .line 66
    const-string p3, "Bankaccount_precisematching_click"

    .line 67
    .line 68
    invoke-virtual {p2, p3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/BankInfo;->getIcon()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p2, p3, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 87
    .line 88
    iget-object p0, p0, Lmb8;->k:Landroidx/constraintlayout/widget/Group;

    .line 89
    .line 90
    const-string p1, "recoBanksGroup"

    .line 91
    .line 92
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic F0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->E0(ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final H0(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getFormatText()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-boolean v3, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->O:Z

    .line 11
    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p1, Lteam/opay/pay/R$string;->osdk_10_digits_input_hint_please:I

    .line 24
    .line 25
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->E0(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-static {p0, v1, v2, v0, v2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->F0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p0, v1, v2, v0, v2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->F0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method public static synthetic T(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->r0(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->B0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->p0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->t0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->C0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->q0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->x0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->D0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->s0(ZLandroidx/fragment/app/Fragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lmb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->U:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getRecoBanksAdapter()Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->w0(Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getRecoBanksAdapter()Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->T:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getUserBanksMate()Lteam/opay/pay/api/UserBanksMate;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewModel"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->H0()Lteam/opay/pay/api/UserBanksMate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static final synthetic h0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/api/UserBanksMate;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getUserBanksMate()Lteam/opay/pay/api/UserBanksMate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lteam/opay/pay/home/tabs/BankTransferViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->O:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->U:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Lteam/opay/pay/api/UserBanksMate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->setUserBanksMate(Lteam/opay/pay/api/UserBanksMate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final p0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZI)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final q0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean p2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->O:Z

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object p2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->W:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getUserBanksMate()Lteam/opay/pay/api/UserBanksMate;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->z0(Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v1, p1

    .line 38
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lnh0;

    .line 42
    .line 43
    invoke-direct {p2, p1, p0}, Lnh0;-><init>(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->w0(Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public static final r0(Landroidx/fragment/app/Fragment;Lteam/opay/pay/kyc/view/BankAccountInputV2;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->z0(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private final setUserBanksMate(Lteam/opay/pay/api/UserBanksMate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewModel"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->l1(Lteam/opay/pay/api/UserBanksMate;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final t0(Lteam/opay/pay/kyc/view/BankAccountInputV2;ZLteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->P:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v3, v2

    .line 15
    :goto_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 16
    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_2
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move-object v0, v2

    .line 37
    :goto_2
    if-nez v0, :cond_4

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    sget-object v3, Lteam/opay/pay/kyc/view/BankAccountInputV2$a;->a:[I

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    aget v0, v3, v0

    .line 48
    .line 49
    :goto_3
    const-string v3, "accountUtil"

    .line 50
    .line 51
    if-eq v0, v1, :cond_b

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    if-eq v0, p1, :cond_8

    .line 55
    .line 56
    const/4 p1, 0x3

    .line 57
    if-eq v0, p1, :cond_5

    .line 58
    .line 59
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getProgressBar()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_6
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->M:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 73
    .line 74
    if-nez p0, :cond_7

    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object p0, v2

    .line 80
    :cond_7
    sget-object p1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 81
    .line 82
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, v2, v0, p2}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->k(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_8
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getProgressBar()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_9

    .line 99
    .line 100
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_9
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->M:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 104
    .line 105
    if-nez p0, :cond_a

    .line 106
    .line 107
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object v4, v2

    .line 111
    goto :goto_4

    .line 112
    :cond_a
    move-object v4, p0

    .line 113
    :goto_4
    sget-object v5, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_SUCCESS:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 114
    .line 115
    sget p0, Lteam/opay/pay/R$string;->osdk_bvn_found_for_this_account:I

    .line 116
    .line 117
    invoke-static {p0}, Ljmf;->k(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const/16 v9, 0xc

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_b
    if-nez p1, :cond_d

    .line 131
    .line 132
    iget-object p0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->M:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 133
    .line 134
    if-nez p0, :cond_c

    .line 135
    .line 136
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object v4, v2

    .line 140
    goto :goto_5

    .line 141
    :cond_c
    move-object v4, p0

    .line 142
    :goto_5
    sget-object v5, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 143
    .line 144
    const/16 v9, 0xc

    .line 145
    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_d
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/view/BankAccountInputV2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final x0(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final y0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getSearchLayoutView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0(Landroidx/fragment/app/Fragment;IILandroid/content/Intent;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/16 p1, 0x2712

    .line 26
    .line 27
    if-ne p2, p1, :cond_4

    .line 28
    .line 29
    const/16 p1, 0x2713

    .line 30
    .line 31
    if-ne p3, p1, :cond_4

    .line 32
    .line 33
    if-eqz p4, :cond_4

    .line 34
    .line 35
    const-string p1, "selectBankCode"

    .line 36
    .line 37
    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, ""

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    move-object p1, p2

    .line 46
    :cond_1
    const-string p3, "selectBankName"

    .line 47
    .line 48
    invoke-virtual {p4, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    move-object p3, p2

    .line 55
    :cond_2
    const-string v0, "selectBankIcon"

    .line 56
    .line 57
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    if-nez p4, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object p2, p4

    .line 65
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    return-void
.end method

.method public final E0(ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p2, Lteam/opay/pay/R$string;->osdk_10_digits_input_hint_please:I

    .line 2
    .line 3
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/BaseAccountEditText;->N(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final G0()V
    .locals 7

    .line 1
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/android/views/BaseAccountEditText;->Q(Lteam/opay/pay/android/views/BaseAccountEditText;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getSearchTvView()Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget v1, Lteam/opay/pay/R$string;->osdk_searching_bank:I

    .line 19
    .line 20
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public P(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "status"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/views/BaseAccountEditText;->P(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_FAILED:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 12
    .line 13
    const-string v2, "type"

    .line 14
    .line 15
    const-string v3, "Bankaccount_errortips_show"

    .line 16
    .line 17
    if-ne p1, p2, :cond_4

    .line 18
    .line 19
    const-string v4, "20003"

    .line 20
    .line 21
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-nez p4, :cond_4

    .line 26
    .line 27
    sget-object p1, Lx7b;->a:Lx7b;

    .line 28
    .line 29
    const-string p2, "timeout"

    .line 30
    .line 31
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-array p4, v1, [Lkotlin/Pair;

    .line 36
    .line 37
    aput-object p2, p4, v0

    .line 38
    .line 39
    invoke-virtual {p1, v3, p4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getSearchLayout()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    sget p2, Lteam/opay/pay/R$drawable;->shape_ff4e5_12:I

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getResultTag()Landroid/widget/ImageView;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget p4, Lteam/opay/pay/R$mipmap;->osdk_notice_icon:I

    .line 64
    .line 65
    invoke-static {p2, p4}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 73
    .line 74
    iget-object p1, p1, Lmb8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTvSearch()Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTvSearch()Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    sget p3, Lteam/opay/pay/R$color;->osdk_color_FF9100:I

    .line 101
    .line 102
    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    if-ne p1, p2, :cond_5

    .line 111
    .line 112
    sget-object p1, Lx7b;->a:Lx7b;

    .line 113
    .line 114
    const-string p2, "failed"

    .line 115
    .line 116
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    new-array p3, v1, [Lkotlin/Pair;

    .line 121
    .line 122
    aput-object p2, p3, v0

    .line 123
    .line 124
    invoke-virtual {p1, v3, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 128
    .line 129
    iget-object p1, p1, Lmb8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_0
    return-void
.end method

.method public final getBankCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewModel"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->y0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final getBankIv()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getBankTv()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->n:Landroid/widget/TextView;

    .line 4
    .line 5
    return-object v0
.end method

.method public getBtnBeneficiaryView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getClearnButtonView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 4
    .line 5
    return-object v0
.end method

.method public getEditCodeView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getEditDividerView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getEnterBankAccountFinish()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->V:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorBackgroundRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorTipsView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->p:Landroid/widget/TextView;

    .line 4
    .line 5
    return-object v0
.end method

.method public getHintTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getInputTextView()Lteam/opay/pay/android/views/KeyboardEditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 4
    .line 5
    return-object v0
.end method

.method public getNormalBackgroundRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->I:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOnAccountValidCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->P:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnBankSelectClick()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->W:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultTagView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    return-object v0
.end method

.method public getSearchErrorBackgroundRes()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->L:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearchLayoutView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    return-object v0
.end method

.method public getSearchNormalBackgroundRes()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->K:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearchProgressView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->l:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    return-object v0
.end method

.method public getSearchTvView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 2
    .line 3
    iget-object v0, v0, Lmb8;->q:Landroid/widget/TextView;

    .line 4
    .line 5
    return-object v0
.end method

.method public getTagMerchantView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final o0(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "channel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->Q:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->R:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 21
    .line 22
    new-instance v2, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$2;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-class v1, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$3;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$4;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$5;

    .line 49
    .line 50
    invoke-direct {v5, p1, v0}, Lteam/opay/pay/kyc/view/BankAccountInputV2$bind$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v1, v2, v3, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 62
    .line 63
    iput-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 64
    .line 65
    sget-object v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->d:Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;->a(Lteam/opay/pay/android/views/BaseAccountEditText;)Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz p3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 83
    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    const-string v1, "viewModel"

    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object v4, v1

    .line 93
    :goto_0
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->i0()Lteam/opay/pay/android/validation/FieldValidation;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, p3}, Lteam/opay/pay/android/validation/FieldValidation;->i(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    new-instance v1, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;

    .line 101
    .line 102
    invoke-direct {v1, p0, p1, p2, p3}, Lteam/opay/pay/kyc/view/BankAccountInputV2$b;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->d(Landroidx/fragment/app/Fragment;Lteam/opay/pay/android/views/e;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->M:Lteam/opay/pay/android/views/AmountInputBusnissUtils;

    .line 109
    .line 110
    iget-object p2, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 111
    .line 112
    iget-object p2, p2, Lmb8;->n:Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    new-instance p3, Ljh0;

    .line 117
    .line 118
    invoke-direct {p3, p0, p1}, Ljh0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;Landroidx/fragment/app/Fragment;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lvp7;->b(Landroid/app/Activity;)Lvp7;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Lkh0;

    .line 133
    .line 134
    invoke-direct {p2, p0}, Lkh0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lvp7;->g(Lvp7$a;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget v0, Lteam/opay/pay/R$string;->osdk_please_enter_10_dights_account_number:I

    .line 5
    .line 6
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->setHintText(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$color;->black_25:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->setHintTextColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lteam/opay/pay/R$color;->black_85:I

    .line 29
    .line 30
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/high16 v1, 0x41600000    # 14.0f

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getRecoBanksAdapter()Lteam/opay/pay/home/tabs/ac/RecoBankAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 53
    .line 54
    iget-object v1, v1, Lmb8;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget v1, Lteam/opay/pay/R$string;->numbers_only_pattern:I

    .line 66
    .line 67
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x6

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 84
    .line 85
    .line 86
    const v1, 0x800013

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 97
    .line 98
    iget-object v0, v0, Lmb8;->f:Lcom/google/android/material/button/MaterialButton;

    .line 99
    .line 100
    new-instance v1, Lhh0;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lhh0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final s0(ZLandroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "viewModel"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->d0()Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Llh0;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Llh0;-><init>(Lteam/opay/pay/kyc/view/BankAccountInputV2;Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnterBankAccountFinish(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->V:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public setErrorBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->J:I

    .line 2
    .line 3
    return-void
.end method

.method public setNormalBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->I:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOnAccountValidCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->P:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnBankSelectClick(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->W:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public setSearchErrorBackgroundRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->L:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setSearchNormalBackgroundRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->K:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final u0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "viewModel"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->f1(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_1
    invoke-virtual {v0, p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->h1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v1, v0

    .line 35
    :goto_0
    invoke-virtual {v1, p3}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->g1(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getBankTv()Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget v1, Lteam/opay/pay/R$string;->label_select_bank:I

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v1, "getString(...)"

    .line 61
    .line 62
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    sget p2, Lteam/opay/pay/R$color;->black_25:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    sget p2, Lteam/opay/pay/R$color;->black_85:I

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    invoke-static {v1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getBankIv()Landroid/widget/ImageView;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 p2, 0x1

    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-lez p1, :cond_7

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_7
    const/4 p1, 0x0

    .line 109
    :goto_2
    invoke-static {v1, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 110
    .line 111
    .line 112
    sget v3, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v4, 0x0

    .line 117
    move-object v2, p3

    .line 118
    invoke-static/range {v1 .. v6}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H:Lmb8;

    .line 122
    .line 123
    iget-object p1, p1, Lmb8;->k:Landroidx/constraintlayout/widget/Group;

    .line 124
    .line 125
    const-string p3, "recoBanksGroup"

    .line 126
    .line 127
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p2}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->H0(Z)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final w0(Landroidx/fragment/app/Fragment;ZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->O:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getFormatText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/kyc/view/BankAccountInputV2;->N:Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "viewModel"

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_1
    new-instance v2, Loh0;

    .line 23
    .line 24
    invoke-direct {v2, v0, p3}, Loh0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, p1, p2, v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->M0(Ljava/lang/String;Lag8;ZLkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final z0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-class v2, Lteam/opay/pay/home/tabs/ChooseBankActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "native_choose_bank_from"

    .line 16
    .line 17
    const-string v2, "value_native_choose_bank_from_kyc_upgrade"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "key_data"

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/pay/kyc/view/BankAccountInputV2;->getUserBanksMate()Lteam/opay/pay/api/UserBanksMate;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x2712

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
