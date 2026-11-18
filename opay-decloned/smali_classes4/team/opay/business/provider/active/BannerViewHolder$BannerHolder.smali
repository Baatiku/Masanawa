.class public final Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;
.super Lteam/opay/core/common/internal/GenericViewHolder;
.source "LoopBannerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/provider/active/BannerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BannerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericViewHolder<",
        "Lteam/opay/business/provider/active/BannerEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;",
        "Lteam/opay/core/common/internal/GenericViewHolder;",
        "Lteam/opay/business/provider/active/BannerEntity;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lteam/opay/business/provider/active/BannerViewHolder;Landroid/view/View;)V",
        "",
        "position",
        "data",
        "",
        "d",
        "(ILteam/opay/business/provider/active/BannerEntity;)V",
        "Lo3c;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "c",
        "()Lo3c;",
        "binding",
        "business-provider_release"
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
.field public static final synthetic c:[Lzo7;
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
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/business/provider/active/BannerViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/provider/databinding/ProviderItemCommonBannerBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;

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
    sput-object v1, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/business/provider/active/BannerViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/BannerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->b:Lteam/opay/business/provider/active/BannerViewHolder;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lteam/opay/core/common/internal/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lo3c;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/provider/active/BannerViewHolder;ILteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->e(Lteam/opay/business/provider/active/BannerViewHolder;ILteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;)Lo3c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c()Lo3c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/business/provider/active/BannerViewHolder;ILteam/opay/business/provider/active/BannerEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/provider/active/BannerViewHolder;->e()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method public final c()Lo3c;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo3c;

    .line 13
    .line 14
    return-object v0
.end method

.method public d(ILteam/opay/business/provider/active/BannerEntity;)V
    .locals 9
    .param p2    # Lteam/opay/business/provider/active/BannerEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c()Lo3c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lo3c;->b:Lteam/opay/business/provider/active/ImageLottieView;

    .line 11
    .line 12
    sget v1, Lteam/opay/core/http/R$drawable;->http_layer_opay_banner:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c()Lo3c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Lo3c;->b:Lteam/opay/business/provider/active/ImageLottieView;

    .line 22
    .line 23
    const-string v0, "ivBanner"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/business/provider/active/BannerEntity;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v6, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder$a;

    .line 33
    .line 34
    invoke-direct {v6, p0}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder$a;-><init>(Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;)V

    .line 35
    .line 36
    .line 37
    const/16 v7, 0xe

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v1 .. v8}, Lteam/opay/core/common/android/glide/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->c()Lo3c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lo3c;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "getRoot(...)"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/business/provider/active/BannerViewHolder$BannerHolder;->b:Lteam/opay/business/provider/active/BannerViewHolder;

    .line 60
    .line 61
    new-instance v2, Lnm0;

    .line 62
    .line 63
    invoke-direct {v2, v1, p1, p2}, Lnm0;-><init>(Lteam/opay/business/provider/active/BannerViewHolder;ILteam/opay/business/provider/active/BannerEntity;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
