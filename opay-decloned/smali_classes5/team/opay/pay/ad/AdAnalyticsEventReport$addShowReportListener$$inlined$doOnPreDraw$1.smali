.class public final Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/AdAnalyticsEventReport;->d(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$doOnPreDraw$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Boolean;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lteam/opay/pay/ad/AdAnalyticsEventReport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->f:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v8, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 2
    .line 3
    instance-of v0, v8, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v9, v8

    .line 8
    check-cast v9, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 9
    .line 10
    new-instance v10, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;

    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->e:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->f:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v7, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->g:Ljava/lang/String;

    .line 23
    .line 24
    move-object v0, v10

    .line 25
    move-object v3, v8

    .line 26
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;-><init>(Lteam/opay/pay/ad/AdAnalyticsEventReport;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9, v10}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->b(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 30
    .line 31
    .line 32
    new-instance v10, Lteam/opay/pay/ad/AdAnalyticsEventReport$b;

    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->b:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->c:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->e:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v6, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->f:Ljava/lang/Boolean;

    .line 43
    .line 44
    iget-object v7, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$addShowReportListener$$inlined$doOnPreDraw$1;->g:Ljava/lang/String;

    .line 45
    .line 46
    move-object v0, v10

    .line 47
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/ad/AdAnalyticsEventReport$b;-><init>(Lteam/opay/pay/ad/AdAnalyticsEventReport;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v10}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
