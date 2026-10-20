.class public final Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AdapterViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u001b\u0010\u0010\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;Landroid/view/View;)V",
        "",
        "position",
        "",
        "b",
        "(I)V",
        "Lqb3;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "d",
        "()Lqb3;",
        "binding",
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

.field public final synthetic b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/dialog/databinding/DialogItemNewUserBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;

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
    sput-object v1, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;
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
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lqb3;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->c(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;Lteam/opay/business/dialog/api/DialogEntity;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lhre;->a:Lhre;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lf6e;->a:Lf6e;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v2, v4, v5

    .line 18
    .line 19
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "home_newtask_%s_click"

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "format(...)"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-array v3, v5, [Lkotlin/Pair;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lhre;->c(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Lud;->a:Lud;

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeDialogFragment;->getAppContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getJumpUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    :cond_0
    move-object v6, p1

    .line 54
    const/4 v8, 0x4

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-static/range {v4 .. v9}, Lud;->i(Lud;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->getDataList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lteam/opay/business/dialog/api/DialogEntity;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->d()Lqb3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lqb3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    const-string v1, "itemImg"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getPicUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget v2, Lteam/opay/core/http/R$drawable;->http_opay_logo:I

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->d()Lqb3;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lqb3;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getDesc()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, ""

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->d()Lqb3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lqb3;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getButton()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v2, v1

    .line 68
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    .line 73
    const-string v1, "itemView"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;

    .line 79
    .line 80
    iget-object v1, v1, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter;->b:Lteam/opay/business/dialog/fragment/v1/NewUserDialog;

    .line 81
    .line 82
    new-instance v2, Llt9;

    .line 83
    .line 84
    invoke-direct {v2, v1, p1}, Llt9;-><init>(Lteam/opay/business/dialog/fragment/v1/NewUserDialog;Lteam/opay/business/dialog/api/DialogEntity;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final d()Lqb3;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/dialog/fragment/v1/NewUserDialog$NewUserAdapter$AdapterViewHolder;->c:[Lzo7;

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
    check-cast v0, Lqb3;

    .line 13
    .line 14
    return-object v0
.end method
