.class public final Lteam/opay/pay/account/verify/VerifyMethodsAdopter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "VerifyFirstChooseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/account/verify/VerifyMethods;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyMethodsAdopter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/account/verify/VerifyMethods;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lkotlin/Function1;",
        "",
        "clickBlock",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "helper",
        "item",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/account/verify/VerifyMethods;)V",
        "a",
        "Lkotlin/jvm/functions/Function1;",
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
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/account/verify/VerifyMethods;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/account/verify/VerifyMethods;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "clickBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$layout;->item_verify_otp_choose:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyMethodsAdopter;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/account/verify/VerifyMethodsAdopter;Lteam/opay/pay/account/verify/VerifyMethods;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyMethodsAdopter;->m(Lteam/opay/pay/account/verify/VerifyMethodsAdopter;Lteam/opay/pay/account/verify/VerifyMethods;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/account/verify/VerifyMethodsAdopter;Lteam/opay/pay/account/verify/VerifyMethods;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyMethodsAdopter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyMethodsAdopter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/account/verify/VerifyMethods;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/account/verify/VerifyMethods;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/VerifyMethods;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->iv_icon:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyMethods;->b()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v4, v2, v3}, Lme7;->r(Landroid/widget/ImageView;IZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget v0, Lteam/opay/pay/R$id;->tv_title:I

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyMethods;->d()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 37
    .line 38
    .line 39
    sget v0, Lteam/opay/pay/R$id;->tv_desc:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyMethods;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lzqf;

    .line 58
    .line 59
    invoke-direct {v0, p0, p2}, Lzqf;-><init>(Lteam/opay/pay/account/verify/VerifyMethodsAdopter;Lteam/opay/pay/account/verify/VerifyMethods;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
