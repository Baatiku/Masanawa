.class public final Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "OCustomerServiceFAQPagerAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "",
        "Lteam/opay/core/api/graphql/OCustomerServiceTabData;",
        "list",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V",
        "",
        "getItemCount",
        "()I",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "l",
        "(I)Landroidx/fragment/app/Fragment;",
        "j",
        "Ljava/util/List;",
        "",
        "k",
        "D",
        "()Ljava/util/List;",
        "datas",
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
            "Lteam/opay/core/api/graphql/OCustomerServiceTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/OCustomerServiceTabData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragmentActivity"

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
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->j:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->k:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final D()Ljava/util/List;
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
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->j:Ljava/util/List;

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
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/api/graphql/OCustomerServiceTabData;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getCategories()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;->k:Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment$Companion;->a(Lteam/opay/core/api/graphql/OCustomerServiceTabData;I)Lteam/opay/pay/customerservice/OCustomerServiceNoticeFAQFragment;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    sget-object v1, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->u:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;

    .line 30
    .line 31
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getQuestions()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/OCustomerServiceTabData;->getHasNextPage()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    new-instance v11, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/16 v9, 0x20

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v2, v11

    .line 65
    invoke-direct/range {v2 .. v10}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_1
    invoke-virtual {v1, v11, p1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;->a(Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;Z)Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_2
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFAQPagerAdapter;->k:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-object p1
.end method
