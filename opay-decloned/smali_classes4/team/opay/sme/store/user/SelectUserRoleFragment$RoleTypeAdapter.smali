.class public final Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectUserRoleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/user/SelectUserRoleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RoleTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lqwd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u000b\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\n0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R0\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010&\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001e\u0010\u001f\u0012\u0004\u0008$\u0010%\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010-\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R6\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00150.2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00150.8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lqwd;",
        "<init>",
        "(Lteam/opay/sme/store/user/SelectUserRoleFragment;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "o",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "m",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "Lkotlin/Function1;",
        "Lteam/opay/sme/store/api/Business;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getOnItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "p",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onItemClick",
        "",
        "b",
        "Ljava/lang/String;",
        "getSelected",
        "()Ljava/lang/String;",
        "q",
        "(Ljava/lang/String;)V",
        "getSelected$annotations",
        "()V",
        "selected",
        "c",
        "Lteam/opay/sme/store/api/Business;",
        "l",
        "()Lteam/opay/sme/store/api/Business;",
        "setCallbackRole",
        "(Lteam/opay/sme/store/api/Business;)V",
        "callbackRole",
        "",
        "value",
        "d",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
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


# instance fields
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/sme/store/api/Business;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lteam/opay/sme/store/api/Business;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/Business;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic e:Lteam/opay/sme/store/user/SelectUserRoleFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/user/SelectUserRoleFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->e:Lteam/opay/sme/store/user/SelectUserRoleFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "CASHIER"

    .line 7
    .line 8
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->d:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic k(Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;Lteam/opay/sme/store/api/Business;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->n(Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;Lteam/opay/sme/store/api/Business;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;Lteam/opay/sme/store/api/Business;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/sme/store/api/Business;->getCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "CASHIER"

    .line 8
    .line 9
    :cond_0
    iput-object v0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->d:Ljava/util/List;

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

.method public final l()Lteam/opay/sme/store/api/Business;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->c:Lteam/opay/sme/store/api/Business;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 3
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lqwd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/sme/store/api/Business;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    const-string v1, "itemView"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lbfd;

    .line 25
    .line 26
    invoke-direct {v1, p0, p2}, Lbfd;-><init>(Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;Lteam/opay/sme/store/api/Business;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lqwd;

    .line 37
    .line 38
    iget-object v0, v0, Lqwd;->d:Lteam/opay/core/widget/fillet/CorpImageView;

    .line 39
    .line 40
    const-string v1, "adminHead"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/sme/store/api/Business;->getIconUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget v2, Lteam/opay/core/common/R$drawable;->common_default_logo_grey:I

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lqwd;

    .line 59
    .line 60
    iget-object v0, v0, Lqwd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {p2}, Lteam/opay/sme/store/api/Business;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, ""

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    move-object v1, v2

    .line 71
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lqwd;

    .line 79
    .line 80
    iget-object v0, v0, Lqwd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {p2}, Lteam/opay/sme/store/api/Business;->getDescription()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move-object v2, v1

    .line 90
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lqwd;

    .line 98
    .line 99
    iget-object p1, p1, Lqwd;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    .line 101
    iget-object v0, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2}, Lteam/opay/sme/store/api/Business;->getCode()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->b:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p2}, Lteam/opay/sme/store/api/Business;->getCode()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iput-object p2, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->c:Lteam/opay/sme/store/api/Business;

    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lqwd;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lqwd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqwd;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->m(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->o(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/sme/store/api/Business;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/Business;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->d:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0}, Lteam/opay/sme/store/user/SelectUserRoleFragment$RoleTypeAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
