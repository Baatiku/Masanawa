.class public final Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;
.super Lteam/opay/sme/store/branch/pos/Hilt_PosBindingTabFragment;
.source "PosBindingTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/branch/pos/PosBindingTabFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003R\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001bR*\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroy",
        "Lzud;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "K",
        "()Lzud;",
        "binding",
        "Lteam/opay/core/common/android/vp2/TabsAdapter2;",
        "g",
        "Lid8;",
        "N",
        "()Lteam/opay/core/common/android/vp2/TabsAdapter2;",
        "tabAdapter",
        "Lcom/google/android/material/tabs/TabLayoutMediator;",
        "h",
        "M",
        "()Lcom/google/android/material/tabs/TabLayoutMediator;",
        "mediator",
        "Lkotlin/Function0;",
        "i",
        "Lkotlin/jvm/functions/Function0;",
        "L",
        "()Lkotlin/jvm/functions/Function0;",
        "S",
        "(Lkotlin/jvm/functions/Function0;)V",
        "callback",
        "j",
        "Companion",
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
.field public static final j:Lteam/opay/sme/store/branch/pos/PosBindingTabFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic k:[Lzo7;
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
.field public final f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lkotlin/jvm/functions/Function0;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreFragmentPosBindTabBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;

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
    sput-object v1, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->k:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->j:Lteam/opay/sme/store/branch/pos/PosBindingTabFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/sme/store/R$layout;->sme_store_fragment_pos_bind_tab:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/sme/store/branch/pos/Hilt_PosBindingTabFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Lzud;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    new-instance v0, Lrub;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lrub;-><init>(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->g:Lid8;

    .line 25
    .line 26
    new-instance v0, Lsub;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lsub;-><init>(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->h:Lid8;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic F(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->O(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->P(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->R(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->T(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->Q(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final M()Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N()Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final O(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lcom/google/android/material/tabs/TabLayoutMediator;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->K()Lzud;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lzud;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->K()Lzud;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v2, v2, Lzud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    new-instance v3, Ltub;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Ltub;-><init>(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final P(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->N()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p2}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->e(I)Lteam/opay/core/common/android/TabInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lteam/opay/core/common/android/TabInfo;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final Q(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->N()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final R(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->K()Lzud;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lzud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final T(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)Lteam/opay/core/common/android/vp2/TabsAdapter2;
    .locals 7

    .line 1
    new-instance v6, Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "getChildFragmentManager(...)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/common/android/vp2/TabsAdapter2;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Lea7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method


# virtual methods
.method public final K()Lzud;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->k:[Lzo7;

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
    check-cast v0, Lzud;

    .line 13
    .line 14
    return-object v0
.end method

.method public final L()Lkotlin/jvm/functions/Function0;
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
    iget-object v0, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->i:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->i:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->M()Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->detach()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "view"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    const-string v3, "key_branchId"

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p1, p2

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "key_operateType"

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v4, p2

    .line 43
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, "key_oldSerial"

    .line 48
    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :cond_2
    if-nez p2, :cond_3

    .line 56
    .line 57
    const-string p2, ""

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    const-string v8, "key_tab"

    .line 66
    .line 67
    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v6, 0x0

    .line 73
    :goto_2
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->K()Lzud;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iget-object v8, v8, Lzud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    .line 79
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->N()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v8, v9}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Lteam/opay/core/common/android/TabInfo;

    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const-class v10, Lteam/opay/sme/store/branch/pos/PosBindListFragment;

    .line 93
    .line 94
    invoke-direct {v8, v9, v10}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    new-instance v9, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v11, "MERCHANT_UNBOUND"

    .line 106
    .line 107
    const-string v12, "queryType"

    .line 108
    .line 109
    invoke-virtual {v9, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v7, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v9}, Lteam/opay/core/common/android/TabInfo;->f(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    sget v9, Lteam/opay/sme/store/R$string;->sme_store_available_pos:I

    .line 122
    .line 123
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v8, v9}, Lteam/opay/core/common/android/TabInfo;->h(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v9, Lteam/opay/core/common/android/TabInfo;

    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-direct {v9, v11, v10}, Lteam/opay/core/common/android/TabInfo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    new-instance v10, Landroid/os/Bundle;

    .line 140
    .line 141
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v3, "MERCHANT_ALL"

    .line 148
    .line 149
    invoke-virtual {v10, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v7, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v10}, Lteam/opay/core/common/android/TabInfo;->f(Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    sget v3, Lteam/opay/sme/store/R$string;->sme_store_all_pos:I

    .line 162
    .line 163
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v9, v3}, Lteam/opay/core/common/android/TabInfo;->h(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-array v3, v1, [Lteam/opay/core/common/android/TabInfo;

    .line 171
    .line 172
    aput-object v8, v3, v2

    .line 173
    .line 174
    aput-object v9, v3, v0

    .line 175
    .line 176
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->N()Lteam/opay/core/common/android/vp2/TabsAdapter2;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    new-instance v7, Lpub;

    .line 185
    .line 186
    invoke-direct {v7, p0}, Lpub;-><init>(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v3, v7}, Lteam/opay/core/common/android/vp2/TabsAdapter2;->f(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->M()Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 197
    .line 198
    .line 199
    if-eqz v6, :cond_5

    .line 200
    .line 201
    invoke-virtual {p0}, Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;->K()Lzud;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    iget-object v3, v3, Lzud;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 206
    .line 207
    new-instance v5, Lqub;

    .line 208
    .line 209
    invoke-direct {v5, p0, v6}, Lqub;-><init>(Lteam/opay/sme/store/branch/pos/PosBindingTabFragment;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 213
    .line 214
    .line 215
    :cond_5
    sget-object v3, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 216
    .line 217
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const-string v6, "operateType"

    .line 222
    .line 223
    invoke-static {v6, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    const-string v6, "branchId"

    .line 228
    .line 229
    invoke-static {v6, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string v6, "oldSn"

    .line 234
    .line 235
    invoke-static {v6, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    const/4 v6, 0x3

    .line 240
    new-array v6, v6, [Lkotlin/Pair;

    .line 241
    .line 242
    aput-object v4, v6, v2

    .line 243
    .line 244
    aput-object p1, v6, v0

    .line 245
    .line 246
    aput-object p2, v6, v1

    .line 247
    .line 248
    const-string p1, "employer_branch_detail_pos_list_show"

    .line 249
    .line 250
    invoke-virtual {v3, v5, p1, v6}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method
