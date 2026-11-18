.class public final Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "ChangePhoneTipSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Lvj6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\"\u0010\u0014\u001a\u00020\r8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\r8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\"\u0010\u001c\u001a\u00020\r8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001f\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lvj6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "",
        "k",
        "Z",
        "J",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "l",
        "I",
        "setSupportBgTransparent",
        "supportBgTransparent",
        "m",
        "getSupportBack",
        "setSupportBack",
        "supportBack",
        "",
        "n",
        "Ljava/lang/String;",
        "getWebUrl",
        "()Ljava/lang/String;",
        "setWebUrl",
        "(Ljava/lang/String;)V",
        "webUrl",
        "o",
        "getPhone",
        "setPhone",
        "phone",
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
.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment$1;->INSTANCE:Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->l:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->m:Z

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->n:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->o:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->R(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->S(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->n:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lvj6;

    .line 14
    .line 15
    iget-object p1, p1, Lvj6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string p2, "icClose"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Ls92;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Ls92;-><init>(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lvj6;

    .line 35
    .line 36
    iget-object p1, p1, Lvj6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    sget p2, Lteam/opay/pay/R$string;->change_phone_title_tip:I

    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;->o:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aput-object v0, v1, v2

    .line 47
    .line 48
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lvj6;

    .line 64
    .line 65
    iget-object p1, p1, Lvj6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    const-string p2, "confirmButton"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lt92;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lt92;-><init>(Lteam/opay/pay/account/verify/ChangePhoneTipSheetFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
