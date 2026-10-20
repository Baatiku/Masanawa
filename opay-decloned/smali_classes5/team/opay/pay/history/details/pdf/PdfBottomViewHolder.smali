.class public final Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PdfBottomViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "",
        "transactionReceiptShowText",
        "",
        "fromShare",
        "<init>",
        "(Landroid/view/View;Ljava/lang/String;Z)V",
        "Lteam/opay/pay/history/details/TransactionBody;",
        "entity",
        "",
        "a",
        "(Lteam/opay/pay/history/details/TransactionBody;)V",
        "Ljava/lang/String;",
        "b",
        "Z",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "c",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "Lo0f;",
        "d",
        "Lo0f;",
        "binding",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lo0f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->a:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->b:Z

    .line 5
    sget-object p2, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    const-class p3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    invoke-virtual {p2, p3}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->c:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 6
    invoke-static {p1}, Lo0f;->bind(Landroid/view/View;)Lo0f;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->d:Lo0f;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/history/details/TransactionBody;)V
    .locals 3
    .param p1    # Lteam/opay/pay/history/details/TransactionBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->d:Lo0f;

    .line 7
    .line 8
    iget-object v0, v0, Lo0f;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->b:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget v2, Lteam/opay/pay/R$color;->transaction_evidence_black_25:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget v2, Lteam/opay/pay/R$color;->black_25:I

    .line 22
    .line 23
    :goto_0
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->d:Lo0f;

    .line 35
    .line 36
    iget-object v0, v0, Lo0f;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-boolean v1, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->b:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    sget v1, Lteam/opay/pay/R$color;->transaction_evidence_black_45:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget v1, Lteam/opay/pay/R$color;->black_45:I

    .line 50
    .line 51
    :goto_1
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->d:Lo0f;

    .line 59
    .line 60
    iget-object p1, p1, Lo0f;->c:Landroid/widget/TextView;

    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->d:Lo0f;

    .line 68
    .line 69
    iget-object p1, p1, Lo0f;->d:Landroidx/constraintlayout/widget/Group;

    .line 70
    .line 71
    const-string v0, "tipGroup"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->a:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 v0, 0x0

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 91
    :goto_3
    xor-int/2addr v0, v1

    .line 92
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
