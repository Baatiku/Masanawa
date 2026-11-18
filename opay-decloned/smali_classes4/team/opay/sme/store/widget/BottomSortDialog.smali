.class public final Lteam/opay/sme/store/widget/BottomSortDialog;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "BottomSortDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/widget/BottomSortDialog$Companion;,
        Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 =2\u00020\u0001:\u0002>?B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR6\u0010\'\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R&\u00104\u001a\u0012\u0012\u0004\u0012\u00020\u001600j\u0008\u0012\u0004\u0012\u00020\u0016`18\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00106\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010*R\u001f\u0010<\u001a\u000607R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\u00a8\u0006@"
    }
    d2 = {
        "Lteam/opay/sme/store/widget/BottomSortDialog;",
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
        "",
        "J",
        "()I",
        "K",
        "position",
        "Lteam/opay/sme/store/api/Business;",
        "item",
        "c0",
        "(ILteam/opay/sme/store/api/Business;)V",
        "Laud;",
        "p",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "Y",
        "()Laud;",
        "binding",
        "Lkotlin/Function2;",
        "q",
        "Lkotlin/jvm/functions/Function2;",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function2;",
        "e0",
        "(Lkotlin/jvm/functions/Function2;)V",
        "callBack",
        "",
        "r",
        "Ljava/lang/String;",
        "a0",
        "()Ljava/lang/String;",
        "f0",
        "(Ljava/lang/String;)V",
        "selectedCode",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "s",
        "Ljava/util/ArrayList;",
        "list",
        "t",
        "title",
        "Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;",
        "u",
        "Lid8;",
        "Z",
        "()Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;",
        "mAdapter",
        "v",
        "SortAdapter",
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
.field public static final v:Lteam/opay/sme/store/widget/BottomSortDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic w:[Lzo7;
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
.field public final p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/sme/store/api/Business;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/sme/store/api/Business;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lid8;
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
    const-string v1, "getBinding()Lteam/opay/sme/store/databinding/SmeStoreDialogBottomSortBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/store/widget/BottomSortDialog;

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
    sput-object v1, Lteam/opay/sme/store/widget/BottomSortDialog;->w:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/sme/store/widget/BottomSortDialog$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/sme/store/widget/BottomSortDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/sme/store/widget/BottomSortDialog;->v:Lteam/opay/sme/store/widget/BottomSortDialog$Companion;

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
    const-class v1, Laud;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->s:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->t:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lze1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lze1;-><init>(Lteam/opay/sme/store/widget/BottomSortDialog;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->u:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic T(Lteam/opay/sme/store/widget/BottomSortDialog;)Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->b0(Lteam/opay/sme/store/widget/BottomSortDialog;)Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/sme/store/widget/BottomSortDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->d0(Lteam/opay/sme/store/widget/BottomSortDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V(Lteam/opay/sme/store/widget/BottomSortDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic W(Lteam/opay/sme/store/widget/BottomSortDialog;ILteam/opay/sme/store/api/Business;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/widget/BottomSortDialog;->c0(ILteam/opay/sme/store/api/Business;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic X(Lteam/opay/sme/store/widget/BottomSortDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final b0(Lteam/opay/sme/store/widget/BottomSortDialog;)Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;-><init>(Lteam/opay/sme/store/widget/BottomSortDialog;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/sme/store/widget/BottomSortDialog$mAdapter$2$1$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lteam/opay/sme/store/widget/BottomSortDialog$mAdapter$2$1$1;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;->o(Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final d0(Lteam/opay/sme/store/widget/BottomSortDialog;)Lkotlin/Unit;
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
.method public J()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3f4ccccd    # 0.8f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public K()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Let;->o(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x3f4ccccd    # 0.8f

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Let;->s(IF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final Y()Laud;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/store/widget/BottomSortDialog;->w:[Lzo7;

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
    check-cast v0, Laud;

    .line 13
    .line 14
    return-object v0
.end method

.method public final Z()Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->u:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0(ILteam/opay/sme/store/api/Business;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->q:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e0(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lteam/opay/sme/store/api/Business;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->q:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->r:Ljava/lang/String;

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
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Y()Laud;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Laud;->a()Lteam/opay/core/widget/fillet/CorpConstraintLayout;

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
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Y()Laud;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Laud;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    iget-object p2, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->t:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Y()Laud;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Laud;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    .line 26
    const-string p2, "dialogClose"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Laf1;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Laf1;-><init>(Lteam/opay/sme/store/widget/BottomSortDialog;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Y()Laud;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Laud;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Z()Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/sme/store/widget/BottomSortDialog;->Z()Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lteam/opay/sme/store/widget/BottomSortDialog;->s:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lteam/opay/sme/store/widget/BottomSortDialog$SortAdapter;->setDataList(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
