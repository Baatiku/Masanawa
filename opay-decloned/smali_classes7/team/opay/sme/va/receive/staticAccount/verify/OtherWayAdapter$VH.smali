.class public final Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;
.super Lteam/opay/core/common/internal/GenericViewHolder;
.source "OtherWayAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericViewHolder<",
        "Lteam/opay/sme/va/receive/OtpWayBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;",
        "Lteam/opay/core/common/internal/GenericViewHolder;",
        "Lteam/opay/sme/va/receive/OtpWayBean;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Landroid/view/View;)V",
        "",
        "position",
        "data",
        "",
        "c",
        "(ILteam/opay/sme/va/receive/OtpWayBean;)V",
        "Llyd;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "b",
        "()Llyd;",
        "binding",
        "sme-va_release"
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

.field public final synthetic b:Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/sme/va/databinding/SmeVaItemOtherWayBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;

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
    sput-object v1, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;
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
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b:Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lteam/opay/core/common/internal/GenericViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Llyd;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Lteam/opay/sme/va/receive/OtpWayBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->d(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Lteam/opay/sme/va/receive/OtpWayBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Lteam/opay/sme/va/receive/OtpWayBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;->k()Lteam/opay/sme/va/receive/OtpWayBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;->n(Lteam/opay/sme/va/receive/OtpWayBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final b()Llyd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->c:[Lzo7;

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
    check-cast v0, Llyd;

    .line 13
    .line 14
    return-object v0
.end method

.method public c(ILteam/opay/sme/va/receive/OtpWayBean;)V
    .locals 3
    .param p2    # Lteam/opay/sme/va/receive/OtpWayBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Llyd;->c:Landroid/view/View;

    .line 11
    .line 12
    const-string v1, "divider"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b:Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-static {v0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Llyd;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    const-string v0, "checkIcon"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b:Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;->k()Lteam/opay/sme/va/receive/OtpWayBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    xor-int/2addr v0, v2

    .line 55
    invoke-static {p1, v0}, Lg0g;->f(Landroid/view/View;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Llyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/OtpWayBean;->getLabel()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Llyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 76
    .line 77
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/OtpWayBean;->getIcon()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Llyd;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/sme/va/receive/OtpWayBean;->getReceiveNumber()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b()Llyd;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Llyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "getRoot(...)"

    .line 106
    .line 107
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter$VH;->b:Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;

    .line 111
    .line 112
    new-instance v1, Ld2b;

    .line 113
    .line 114
    invoke-direct {v1, v0, p2}, Ld2b;-><init>(Lteam/opay/sme/va/receive/staticAccount/verify/OtherWayAdapter;Lteam/opay/sme/va/receive/OtpWayBean;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
