.class public final Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "FinNewTabLayoutAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 82\u00020\u0001:\u00019B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010!\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R&\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\t0,j\u0008\u0012\u0004\u0012\u00020\t`-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00100\u00a8\u0006:"
    }
    d2 = {
        "Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;",
        "Landroidx/fragment/app/FragmentStatePagerAdapter;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "<init>",
        "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V",
        "",
        "Lcom/opay/team/newhome/bean/FinanceModuleList;",
        "tabs",
        "",
        "E",
        "(Ljava/util/List;)V",
        "",
        "totalBalance",
        "totalInterestAmount",
        "D",
        "(Ljava/lang/Double;Ljava/lang/Double;)V",
        "C",
        "()V",
        "B",
        "",
        "index",
        "Lcom/opay/team/newhome/bean/FinanceModuleData;",
        "A",
        "(I)Lcom/opay/team/newhome/bean/FinanceModuleData;",
        "i",
        "()I",
        "",
        "object",
        "getItemPosition",
        "(Ljava/lang/Object;)I",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "z",
        "(I)Landroidx/fragment/app/Fragment;",
        "",
        "k",
        "(I)Ljava/lang/CharSequence;",
        "j",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "l",
        "Ljava/lang/Double;",
        "finTotalBalance",
        "Lteam/opay/swarmfoundation/payment/OLoanFragment;",
        "m",
        "Lteam/opay/swarmfoundation/payment/OLoanFragment;",
        "loanFragment",
        "n",
        "finTotalInterestAmount",
        "o",
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
.field public static final o:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:Ljava/lang/String;


# instance fields
.field public final j:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/opay/team/newhome/bean/FinanceModuleList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lteam/opay/swarmfoundation/payment/OLoanFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->o:Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->p:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fm"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->j:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A(I)Lcom/opay/team/newhome/bean/FinanceModuleData;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 26
    .line 27
    const/16 v7, 0x3c

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v1, "default"

    .line 31
    .line 32
    const-string v2, "default"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v0, p1

    .line 39
    invoke-direct/range {v0 .. v8}, Lcom/opay/team/newhome/bean/FinanceModuleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/bean/SuperscriptAd;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-object p1

    .line 43
    :cond_1
    new-instance p1, Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 44
    .line 45
    const/16 v7, 0x3c

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const-string v1, "default"

    .line 49
    .line 50
    const-string v2, "default"

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    move-object v0, p1

    .line 57
    invoke-direct/range {v0 .. v8}, Lcom/opay/team/newhome/bean/FinanceModuleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/bean/SuperscriptAd;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->m:Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/payment/OLoanFragment;->onLoanShow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->m:Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/payment/OLoanFragment;->refreshPage()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final D(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->l:Ljava/lang/Double;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->n:Ljava/lang/Double;

    .line 4
    .line 5
    return-void
.end method

.method public final E(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/FinanceModuleList;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "tabs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->p()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "object"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x2

    .line 7
    return p1
.end method

.method public i()I
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "getCount tabs.size = "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "  tabs = "

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0
.end method

.method public k(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "getPageTitle tabs["

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "] = "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceModuleData;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    return-object p1
.end method

.method public z(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "Saving"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const-string v1, "Loan"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_8

    .line 42
    .line 43
    sget-object v0, Lcom/opay/team/newhome/adapter/FinanceLoanConfig;->Companion:Lcom/opay/team/newhome/adapter/FinanceLoanConfig$Companion;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/opay/team/newhome/adapter/FinanceLoanConfig$Companion;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 52
    .line 53
    const-class v1, Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->m:Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->m:Lteam/opay/swarmfoundation/payment/OLoanFragment;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    sget-object v0, Lcom/opay/team/newhome/finance/FinLoanPagerFragment;->k:Lcom/opay/team/newhome/finance/FinLoanPagerFragment$Companion;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/finance/FinLoanPagerFragment$Companion;->a(Ljava/util/ArrayList;)Lcom/opay/team/newhome/finance/FinLoanPagerFragment;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_1
    return-object v0

    .line 106
    :cond_5
    sget-object v0, Lcom/opay/team/newhome/finance/FinLoanPagerFragment;->k:Lcom/opay/team/newhome/finance/FinLoanPagerFragment$Companion;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/opay/team/newhome/adapter/FinNewTabLayoutAdapter;->k:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/finance/FinLoanPagerFragment$Companion;->a(Ljava/util/ArrayList;)Lcom/opay/team/newhome/finance/FinLoanPagerFragment;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_8
    new-instance p1, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;

    .line 135
    .line 136
    invoke-direct {p1}, Lcom/opay/team/newhome/finance/FinSavingsNewPagerFragment;-><init>()V

    .line 137
    .line 138
    .line 139
    :goto_2
    return-object p1
.end method
