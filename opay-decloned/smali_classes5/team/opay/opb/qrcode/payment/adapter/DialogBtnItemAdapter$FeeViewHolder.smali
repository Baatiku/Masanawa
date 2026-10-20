.class public final Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DialogBtnItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FeeViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Landroid/view/View;)V",
        "Lteam/opay/opb/qrcode/api/CommonWindowButton;",
        "item",
        "",
        "position",
        "",
        "b",
        "(Lteam/opay/opb/qrcode/api/CommonWindowButton;I)V",
        "Lpac;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "d",
        "()Lpac;",
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

.field public final synthetic b:Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/databinding/QrSdkItemCommonDialogBtnBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;

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
    sput-object v1, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->b:Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lpac;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Lteam/opay/opb/qrcode/api/CommonWindowButton;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->c(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Lteam/opay/opb/qrcode/api/CommonWindowButton;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Lteam/opay/opb/qrcode/api/CommonWindowButton;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;->k()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/opb/qrcode/api/CommonWindowButton;I)V
    .locals 5
    .param p1    # Lteam/opay/opb/qrcode/api/CommonWindowButton;
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
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->d()Lpac;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->b:Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;

    .line 11
    .line 12
    iget-object v2, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/CommonWindowButton;->getTitle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    const-string v3, "actionBtn"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lda3;

    .line 33
    .line 34
    invoke-direct {v4, v1, p1}, Lda3;-><init>(Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;Lteam/opay/opb/qrcode/api/CommonWindowButton;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v4}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter;->getItemCount()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    if-ne p2, p1, :cond_1

    .line 47
    .line 48
    iget-object p1, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget v1, Lteam/opay/core/common/R$color;->white:I

    .line 55
    .line 56
    invoke-static {p2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 64
    .line 65
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget p2, Lteam/opay/core/common/R$color;->mint:I

    .line 69
    .line 70
    invoke-static {p1, p2}, Lwie;->o(Lcom/google/android/material/button/MaterialButton;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    sget v1, Lteam/opay/core/common/R$color;->mint:I

    .line 81
    .line 82
    invoke-static {p2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v0, Lpac;->b:Lcom/google/android/material/button/MaterialButton;

    .line 90
    .line 91
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget p2, Lteam/opay/core/common/R$color;->opb_E0F7EE:I

    .line 95
    .line 96
    invoke-static {p1, p2}, Lwie;->o(Lcom/google/android/material/button/MaterialButton;I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public final d()Lpac;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/payment/adapter/DialogBtnItemAdapter$FeeViewHolder;->c:[Lzo7;

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
    check-cast v0, Lpac;

    .line 13
    .line 14
    return-object v0
.end method
