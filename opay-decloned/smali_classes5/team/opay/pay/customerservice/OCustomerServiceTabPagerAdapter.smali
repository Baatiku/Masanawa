.class public final Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "OCustomerServiceNoticeFAQFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0017R!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;",
        "list",
        "",
        "parentId",
        "",
        "first",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;Z)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "l",
        "(I)Landroidx/fragment/app/Fragment;",
        "j",
        "Ljava/util/List;",
        "k",
        "Ljava/lang/String;",
        "Z",
        "",
        "m",
        "Lid8;",
        "F",
        "()Ljava/util/List;",
        "fragments",
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
.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Z

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parentId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->j:Ljava/util/List;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->k:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p4, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->l:Z

    .line 24
    .line 25
    new-instance p1, Ld3a;

    .line 26
    .line 27
    invoke-direct {p1}, Ld3a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->m:Lid8;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic D()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->E()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final E()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->u:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->j:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->k:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->setParentId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->l:Z

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;->a(Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;Z)Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceTabPagerAdapter;->F()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-object p1
.end method
