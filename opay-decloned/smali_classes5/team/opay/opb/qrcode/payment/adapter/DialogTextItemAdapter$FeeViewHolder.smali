.class public final Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DialogTextItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FeeViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0011\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;Landroid/view/View;)V",
        "Lteam/opay/opb/qrcode/api/CommonWindowText;",
        "item",
        "",
        "position",
        "",
        "a",
        "(Lteam/opay/opb/qrcode/api/CommonWindowText;I)V",
        "Loac;",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "b",
        "()Loac;",
        "binding",
        "opay-qrcode_release"
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

.field public final synthetic b:Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/databinding/QrSdkItemCommonDialogBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;

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
    sput-object v1, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->b:Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Loac;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/opb/qrcode/api/CommonWindowText;I)V
    .locals 5
    .param p1    # Lteam/opay/opb/qrcode/api/CommonWindowText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->b()Loac;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->b:Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;

    .line 11
    .line 12
    iget-object v2, v0, Loac;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowText;->getKey()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, ""

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    move-object v3, v4

    .line 23
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Loac;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowText;->getValue()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v4, p1

    .line 36
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter;->getItemCount()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    const-string v1, "vLine"

    .line 46
    .line 47
    if-ne p2, p1, :cond_2

    .line 48
    .line 49
    iget-object p1, v0, Loac;->d:Landroid/view/View;

    .line 50
    .line 51
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, v0, Loac;->d:Landroid/view/View;

    .line 59
    .line 60
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method public final b()Loac;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/payment/adapter/DialogTextItemAdapter$FeeViewHolder;->c:[Lzo7;

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
    check-cast v0, Loac;

    .line 13
    .line 14
    return-object v0
.end method
