.class public final Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OperatorBundlesAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Llb6;",
        "binding",
        "<init>",
        "(Llb6;)V",
        "Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;",
        "bundle",
        "",
        "select",
        "",
        "a",
        "(Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Z)V",
        "Llb6;",
        "getBinding",
        "()Llb6;",
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


# instance fields
.field public final a:Llb6;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llb6;)V
    .locals 1
    .param p1    # Llb6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb6;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;Z)V
    .locals 7
    .param p1    # Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 14
    .line 15
    invoke-virtual {v0}, Llb6;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 32
    .line 33
    iget-object v1, v0, Llb6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    const-string v0, "operatorItemLogo"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_ic_default_operator:I

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v1 .. v6}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->d()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 60
    .line 61
    iget-object v0, v0, Llb6;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->d()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 75
    .line 76
    iget-object v0, v0, Llb6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/pay/payment/airtimeDataBase/OperatorItemData;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/OperatorViewHolder;->a:Llb6;

    .line 86
    .line 87
    iget-object p1, p1, Llb6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
