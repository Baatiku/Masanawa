.class public final Lteam/opay/pay/payment/tv/TvInputMoneyDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "TvInputMoneyDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lr1b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 .2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR2\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R+\u0010 \u001a\u0012\u0012\u000c\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0016\u001a\u0004\u0008#\u0010$R\u001b\u0010(\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0016\u001a\u0004\u0008\'\u0010$R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u0016\u001a\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/pay/payment/tv/TvInputMoneyDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lr1b;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function1;",
        "",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "getPayMoneyClick",
        "()Lkotlin/jvm/functions/Function1;",
        "i0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "payMoneyClick",
        "k",
        "Lid8;",
        "getName",
        "()Ljava/lang/String;",
        "name",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "kotlin.jvm.PlatformType",
        "l",
        "Z",
        "()Ljava/util/ArrayList;",
        "moneys",
        "Ljava/math/BigDecimal;",
        "m",
        "Y",
        "()Ljava/math/BigDecimal;",
        "minMoney",
        "n",
        "X",
        "maxMoney",
        "Ljava/text/DecimalFormat;",
        "o",
        "W",
        "()Ljava/text/DecimalFormat;",
        "decimalFormat",
        "p",
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
.field public static final p:Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function1;
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

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->p:Lteam/opay/pay/payment/tv/TvInputMoneyDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$1;->INSTANCE:Lteam/opay/pay/payment/tv/TvInputMoneyDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lbef;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lbef;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->k:Lid8;

    .line 16
    .line 17
    new-instance v0, Lcef;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcef;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->l:Lid8;

    .line 27
    .line 28
    new-instance v0, Ldef;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ldef;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->m:Lid8;

    .line 38
    .line 39
    new-instance v0, Leef;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Leef;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->n:Lid8;

    .line 49
    .line 50
    new-instance v0, Lfef;

    .line 51
    .line 52
    invoke-direct {v0}, Lfef;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->o:Lid8;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->a0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->V()Ljava/text/DecimalFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic O(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->e0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->h0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->f0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->b0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->c0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->g0(Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->d0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final V()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    sget-object v0, Lbd9;->a:Lbd9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbd9;->g()Ljava/text/DecimalFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final W()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final a0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "keyMax"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string p0, "999999"

    .line 24
    .line 25
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final b0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "keyMin"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string p0, "100"

    .line 24
    .line 25
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final c0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "keyMoneys"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static final d0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "keyName"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string p0, ""

    .line 16
    .line 17
    :cond_1
    return-object p0
.end method

.method public static final e0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lr1b;

    .line 6
    .line 7
    iget-object p1, p1, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lr1b;

    .line 26
    .line 27
    iget-object v0, v0, Lr1b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->Y()Ljava/math/BigDecimal;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-gtz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->X()Ljava/math/BigDecimal;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-gtz p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    :cond_0
    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p2}, Ljava/math/BigDecimal;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Lr1b;

    .line 44
    .line 45
    iget-object p3, p3, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lr1b;

    .line 55
    .line 56
    iget-object p1, p1, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 57
    .line 58
    const-string p2, "customAmount"

    .line 59
    .line 60
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p4}, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;->o(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final h0(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lr1b;

    .line 6
    .line 7
    iget-object v0, v0, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->j:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lkotlin/Unit;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public final X()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/math/BigDecimal;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/math/BigDecimal;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Z()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i0(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lr1b;

    .line 14
    .line 15
    iget-object p1, p1, Lr1b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lr1b;

    .line 29
    .line 30
    iget-object p1, p1, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 31
    .line 32
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->W()Ljava/text/DecimalFormat;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->Y()Ljava/math/BigDecimal;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->W()Ljava/text/DecimalFormat;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->X()Ljava/math/BigDecimal;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "-"

    .line 65
    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v3, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Ljr2;)V

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lr1b;

    .line 101
    .line 102
    iget-object p1, p1, Lr1b;->d:Landroid/widget/ImageView;

    .line 103
    .line 104
    const-string p2, "ivClose"

    .line 105
    .line 106
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lxdf;

    .line 110
    .line 111
    invoke-direct {p2, p0}, Lxdf;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lr1b;

    .line 122
    .line 123
    iget-object p1, p1, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 124
    .line 125
    const-string p2, "customAmount"

    .line 126
    .line 127
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Lydf;

    .line 131
    .line 132
    invoke-direct {p2, p0}, Lydf;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, p2}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->Z()Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_1

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;

    .line 152
    .line 153
    invoke-direct {p1}, Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Lr1b;

    .line 161
    .line 162
    iget-object p2, p2, Lr1b;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->Z()Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    new-instance p2, Lzdf;

    .line 175
    .line 176
    invoke-direct {p2, p1, p0}, Lzdf;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyAdapter;Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lr1b;

    .line 188
    .line 189
    iget-object p1, p1, Lr1b;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    .line 191
    const-string p2, "rvAmount"

    .line 192
    .line 193
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/16 p2, 0x8

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lr1b;

    .line 206
    .line 207
    iget-object p1, p1, Lr1b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    const-string p2, "payBtn"

    .line 210
    .line 211
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance p2, Laef;

    .line 215
    .line 216
    invoke-direct {p2, p0}, Laef;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method
