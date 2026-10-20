.class public final Lteam/opay/business/picture/PickImageSheetFragment;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "PickImageSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/PickImageSheetFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R*\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/business/picture/PickImageSheetFragment;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function0;",
        "p",
        "Lkotlin/jvm/functions/Function0;",
        "getTakePhoto",
        "()Lkotlin/jvm/functions/Function0;",
        "b0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "takePhoto",
        "q",
        "getSelectPhoto",
        "a0",
        "selectPhoto",
        "Lrqb;",
        "r",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "W",
        "()Lrqb;",
        "bind",
        "s",
        "Companion",
        "business-picture_release"
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
.field public static final s:Lteam/opay/business/picture/PickImageSheetFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic t:[Lzo7;
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
.field public p:Lkotlin/jvm/functions/Function0;
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

.field public q:Lkotlin/jvm/functions/Function0;
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

.field public final r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBind()Lteam/opay/business/picture/databinding/PictureFragmentPickImageBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/picture/PickImageSheetFragment;

    .line 7
    .line 8
    const-string v4, "bind"

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
    sput-object v1, Lteam/opay/business/picture/PickImageSheetFragment;->t:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/picture/PickImageSheetFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/picture/PickImageSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/picture/PickImageSheetFragment;->s:Lteam/opay/business/picture/PickImageSheetFragment$Companion;

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
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lrqb;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/picture/PickImageSheetFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic T(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->X(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->Y(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->Z(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/PickImageSheetFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final Y(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/PickImageSheetFragment;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final Z(Lteam/opay/business/picture/PickImageSheetFragment;)Lkotlin/Unit;
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


# virtual methods
.method public final W()Lrqb;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/PickImageSheetFragment;->r:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/picture/PickImageSheetFragment;->t:[Lzo7;

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
    check-cast v0, Lrqb;

    .line 13
    .line 14
    return-object v0
.end method

.method public final a0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/business/picture/PickImageSheetFragment;->q:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/business/picture/PickImageSheetFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
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
    invoke-virtual {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->W()Lrqb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lrqb;->a()Landroid/widget/LinearLayout;

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
    invoke-virtual {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->W()Lrqb;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lrqb;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    const-string p2, "takePhoto"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Ltpb;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Ltpb;-><init>(Lteam/opay/business/picture/PickImageSheetFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->W()Lrqb;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lrqb;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    const-string p2, "selectPhoto"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lupb;

    .line 40
    .line 41
    invoke-direct {p2, p0}, Lupb;-><init>(Lteam/opay/business/picture/PickImageSheetFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/business/picture/PickImageSheetFragment;->W()Lrqb;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lrqb;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const-string p2, "cancel"

    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lvpb;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lvpb;-><init>(Lteam/opay/business/picture/PickImageSheetFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
