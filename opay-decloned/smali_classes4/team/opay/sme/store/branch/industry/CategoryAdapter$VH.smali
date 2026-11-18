.class public final Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;
.super Lteam/opay/core/common/internal/GenericViewHolder;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/branch/industry/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericViewHolder<",
        "Lteam/opay/sme/store/api/IndustryCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;",
        "Lteam/opay/core/common/internal/GenericViewHolder;",
        "Lteam/opay/sme/store/api/IndustryCategory;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Landroid/view/View;)V",
        "",
        "position",
        "data",
        "",
        "c",
        "(ILteam/opay/sme/store/api/IndustryCategory;)V",
        "Lfwd;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "b",
        "()Lfwd;",
        "binding",
        "business-sme-store_release"
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

.field public final synthetic b:Lteam/opay/sme/store/branch/industry/CategoryAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreItemIndustryBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;

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
    sput-object v1, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/sme/store/branch/industry/CategoryAdapter;
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
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b:Lteam/opay/sme/store/branch/industry/CategoryAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lteam/opay/core/common/internal/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lfwd;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Lteam/opay/sme/store/api/IndustryCategory;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->d(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Lteam/opay/sme/store/api/IndustryCategory;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Lteam/opay/sme/store/api/IndustryCategory;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->p(Lteam/opay/sme/store/api/IndustryCategory;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->k()Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final b()Lfwd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->c:[Lzo7;

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
    check-cast v0, Lfwd;

    .line 13
    .line 14
    return-object v0
.end method

.method public c(ILteam/opay/sme/store/api/IndustryCategory;)V
    .locals 3
    .param p2    # Lteam/opay/sme/store/api/IndustryCategory;
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
    invoke-virtual {p2}, Lteam/opay/sme/store/api/IndustryCategory;->getId()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b:Lteam/opay/sme/store/branch/industry/CategoryAdapter;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/sme/store/branch/industry/CategoryAdapter;->l()Lteam/opay/sme/store/api/IndustryCategory;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/sme/store/api/IndustryCategory;->getId()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b()Lfwd;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lfwd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-virtual {p2}, Lteam/opay/sme/store/api/IndustryCategory;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lwie;->x(Landroid/widget/TextView;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v1}, Lwie;->y(Landroid/widget/TextView;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b()Lfwd;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v1, v1, Lfwd;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 61
    .line 62
    const-string v2, "pickedIv"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b()Lfwd;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lfwd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "getRoot(...)"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lteam/opay/sme/store/branch/industry/CategoryAdapter$VH;->b:Lteam/opay/sme/store/branch/industry/CategoryAdapter;

    .line 84
    .line 85
    new-instance v2, Lg62;

    .line 86
    .line 87
    invoke-direct {v2, v1, p2, p1}, Lg62;-><init>(Lteam/opay/sme/store/branch/industry/CategoryAdapter;Lteam/opay/sme/store/api/IndustryCategory;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
