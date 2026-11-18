.class public Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;
.super Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;
.source "KBoxLinkViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;",
        "Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;",
        "Lqja;",
        "binding",
        "<init>",
        "(Lqja;)V",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "item",
        "",
        "p",
        "(Lcom/opay/team/newhome/reward/WidgetModule;)V",
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


# direct methods
.method public constructor <init>(Lqja;)V
    .locals 1
    .param p1    # Lqja;
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
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;-><init>(Lqja;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;->t(Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t(Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->n()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->d()Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object p0, Lx7b;->a:Lx7b;

    .line 31
    .line 32
    const-string v0, "content_type"

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->g()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "content"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->e()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "kbox_id"

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->m()Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v2, 0x3

    .line 63
    new-array v2, v2, [Lkotlin/Pair;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    aput-object v0, v2, v3

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    aput-object v1, v2, v0

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object p1, v2, v0

    .line 73
    .line 74
    const-string p1, "homepage_kbox_click"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public p(Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 2
    .param p1    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    const-string v1, "itemView"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lun7;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lun7;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxLinkViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
