.class public final Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "QrSdkCommonSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 D2\u00020\u0001:\u0001EB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010\'\u001a\u00020\u001c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001e\u001a\u0004\u0008%\u0010 \"\u0004\u0008&\u0010\"R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001b\u00107\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00100\u001a\u0004\u0008\u001e\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R*\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006F"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lteam/opay/opb/qrcode/api/CommonWindowButton;",
        "data",
        "X",
        "(Lteam/opay/opb/qrcode/api/CommonWindowButton;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "K",
        "()I",
        "J",
        "",
        "p",
        "Z",
        "M",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "q",
        "getSupportBack",
        "setSupportBack",
        "supportBack",
        "Liac;",
        "r",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "Y",
        "()Liac;",
        "binding",
        "Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;",
        "s",
        "Lid8;",
        "a0",
        "()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;",
        "mTextItemAdapter",
        "Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;",
        "t",
        "()Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;",
        "mBtnAdapter",
        "Lteam/opay/opb/qrcode/api/CommonWindowData;",
        "u",
        "Lteam/opay/opb/qrcode/api/CommonWindowData;",
        "dialogInfo",
        "Lkotlin/Function0;",
        "v",
        "Lkotlin/jvm/functions/Function0;",
        "getOnFocusCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "e0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onFocusCallback",
        "w",
        "Companion",
        "opay-qrcode_release"
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
.field public static final w:Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic x:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public p:Z

.field public q:Z

.field public final r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lteam/opay/opb/qrcode/api/CommonWindowData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lkotlin/jvm/functions/Function0;
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
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/databinding/QrSdkFragmentCommonDialogBottomBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->x:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->w:Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseSheetFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->q:Z

    .line 6
    .line 7
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 8
    .line 9
    const-class v1, Liac;

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 15
    .line 16
    new-instance v0, Lcac;

    .line 17
    .line 18
    invoke-direct {v0}, Lcac;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->s:Lid8;

    .line 26
    .line 27
    new-instance v0, Ldac;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ldac;-><init>(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->t:Lid8;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic T(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->c0(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->d0()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic V(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->b0(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic W(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;Lteam/opay/opb/qrcode/api/CommonWindowButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->X(Lteam/opay/opb/qrcode/api/CommonWindowButton;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final X(Lteam/opay/opb/qrcode/api/CommonWindowButton;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowButton;->getActionUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lud;->a:Lud;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowButton;->getActionUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowButton;->getCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "focus"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->v:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final Z()Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final b0(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final c0(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$mBtnAdapter$2$1$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment$mBtnAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;->n(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static final d0()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, ""

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "dialogTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->d:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getDesc()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v3, v4}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "dialogContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v0, v5}, Lg0g;->j(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "close"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getShowClose()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_6
    invoke-static {v0, v4}, Lg0g;->j(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0xc

    int-to-float v4, v4

    mul-float v3, v3, v4

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 9
    const-class v4, Ljava/lang/Integer;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    .line 10
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v3, Ljava/lang/Integer;

    goto :goto_5

    .line 11
    :cond_7
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    .line 12
    :cond_8
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_5

    .line 13
    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 14
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 15
    invoke-static {v0, v3}, Lg0g;->b(Landroid/view/View;I)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lbac;

    invoke-direct {v1, p0}, Lbac;-><init>(Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;)V

    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 17
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getTextList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_6

    :cond_a
    move-object v0, v2

    :goto_6
    const-string v1, "itemRecyclerView"

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    .line 18
    :cond_b
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->a0()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    invoke-direct {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->a0()Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    move-result-object v0

    iget-object v3, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getTextList()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_7

    :cond_c
    move-object v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;->setData(Ljava/util/List;)V

    .line 20
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    goto :goto_9

    .line 21
    :cond_d
    :goto_8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 22
    :goto_9
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a

    :cond_e
    move-object v0, v2

    :goto_a
    const-string v1, "buttonRecyclerView"

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_b

    .line 23
    :cond_f
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Z()Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    invoke-direct {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Z()Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    move-result-object v0

    iget-object v3, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lteam/opay/opb/qrcode/api/CommonWindowData;->getButtonList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_10
    invoke-virtual {v0, v2}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;->setData(Ljava/util/List;)V

    .line 25
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    goto :goto_c

    .line 26
    :cond_11
    :goto_b
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    move-result-object v0

    iget-object v0, v0, Liac;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    :goto_c
    return-void

    .line 27
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "return number type not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public J()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x3f400000    # 0.75f

    .line 10
    .line 11
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public K()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x3f400000    # 0.75f

    .line 10
    .line 11
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Y()Liac;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->x:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Liac;

    .line 13
    .line 14
    return-object v0
.end method

.method public final e0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->v:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    const/16 v2, 0x21

    .line 28
    .line 29
    const-string v3, "key_data"

    .line 30
    .line 31
    if-lt v1, v2, :cond_0

    .line 32
    .line 33
    :try_start_1
    const-class v1, Lteam/opay/opb/qrcode/api/CommonWindowData;

    .line 34
    .line 35
    invoke-static {p1, v3, v1}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    move-object v0, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    instance-of v1, p1, Lteam/opay/opb/qrcode/api/CommonWindowData;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    move-object p1, v0

    .line 50
    :cond_1
    check-cast p1, Lteam/opay/opb/qrcode/api/CommonWindowData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    :goto_1
    check-cast v0, Lteam/opay/opb/qrcode/api/CommonWindowData;

    .line 54
    .line 55
    :cond_2
    iput-object v0, p0, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->u:Lteam/opay/opb/qrcode/api/CommonWindowData;

    .line 56
    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->Y()Liac;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Liac;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/opb/qrcode/payment/dialog/QrSdkCommonSheetFragment;->initView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
