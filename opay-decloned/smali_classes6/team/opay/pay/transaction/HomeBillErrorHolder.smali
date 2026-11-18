.class public final Lteam/opay/pay/transaction/HomeBillErrorHolder;
.super Lcom/opay/team/newhome/home/holder/HomeViewHolder;
.source "HomeBillErrorHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HomeBillErrorHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/view/View;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "data",
        "",
        "b",
        "(ILcom/opay/team/newhome/home/bean/HomeData;)V",
        "c",
        "Landroid/view/View;",
        "getItemView",
        "()Landroid/view/View;",
        "Landroidx/constraintlayout/widget/Group;",
        "d",
        "Landroidx/constraintlayout/widget/Group;",
        "errorGroup",
        "Landroid/widget/ProgressBar;",
        "e",
        "Landroid/widget/ProgressBar;",
        "progressBar",
        "Landroid/widget/TextView;",
        "f",
        "Landroid/widget/TextView;",
        "errorTips",
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
.field public final c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->c:Landroid/view/View;

    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$id;->error_group:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->d:Landroidx/constraintlayout/widget/Group;

    .line 20
    .line 21
    sget v0, Lteam/opay/pay/R$id;->error_progress:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ProgressBar;

    .line 28
    .line 29
    iput-object v0, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->e:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    sget v0, Lteam/opay/pay/R$id;->error_tips:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    sget v0, Lteam/opay/pay/R$id;->error_btn:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance v0, Lsy6;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lsy6;-><init>(Lteam/opay/pay/transaction/HomeBillErrorHolder;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/transaction/HomeBillErrorHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transaction/HomeBillErrorHolder;->d(Lteam/opay/pay/transaction/HomeBillErrorHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/transaction/HomeBillErrorHolder;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->d:Landroidx/constraintlayout/widget/Group;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->e:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "home_bill_error_event"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p0, v2, v3, v0, v1}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public b(ILcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 0
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->e:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->d:Landroidx/constraintlayout/widget/Group;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/transaction/HomeBillErrorHolder;->f:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget p2, Lteam/opay/pay/R$string;->osdk_system_busy_tips:I

    .line 32
    .line 33
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method
