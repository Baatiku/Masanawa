.class public final Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/dialog/fragment/v1/NewUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NewUserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u0010\u0012\u000c\u0012\n0\u0002R\u00060\u0000R\u00020\u00030\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\n\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u000c\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R6\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;",
        "Lteam/opay/business/dialog/fragment/v1/NewUserDialog;",
        "<init>",
        "(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;",
        "holder",
        "position",
        "",
        "k",
        "(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;I)V",
        "getItemCount",
        "()I",
        "",
        "Lteam/opay/business/dialog/api/DialogEntity;",
        "value",
        "a",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "AdapterViewHolder",
        "business-dialog_release"
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog;


# direct methods
.method public constructor <init>(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->a:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/business/dialog/api/DialogEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->a:Ljava/util/List;

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

.method public k(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->b(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance p2, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;

    .line 7
    .line 8
    sget v0, Lteam/opay/business/dialog/R$layout;->dialog_item_new_user:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v0, v3, v1, v2}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p0, p1}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;-><init>(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->k(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
            "Lteam/opay/business/dialog/api/DialogEntity;",
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
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
