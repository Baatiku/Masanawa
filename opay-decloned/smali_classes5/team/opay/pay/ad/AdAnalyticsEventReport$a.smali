.class public final Lteam/opay/pay/ad/AdAnalyticsEventReport$a;
.super Ljava/lang/Object;
.source "AdAnalyticsEventReport.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/AdAnalyticsEventReport;->d(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Boolean;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/AdAnalyticsEventReport;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->c:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->f:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/ad/AdAnalyticsEventReport;->b(Lteam/opay/pay/ad/AdAnalyticsEventReport;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->c:Landroid/view/View;

    .line 16
    .line 17
    check-cast v0, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->d()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->c:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lteam/opay/pay/ad/AdAnalyticsEventReport;->c(Lteam/opay/pay/ad/AdAnalyticsEventReport;Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    sget-object v1, Lx7b;->a:Lx7b;

    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->b:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->d:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, ""

    .line 42
    .line 43
    :cond_1
    iget-object v5, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->e:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v7, 0x14

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v1 .. v8}, Lx7b;->E(Lx7b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/pay/ad/AdAnalyticsEventReport;->a(Lteam/opay/pay/ad/AdAnalyticsEventReport;)Lteam/opay/pay/ad/AdReachHelp;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->f:Ljava/lang/Boolean;

    .line 62
    .line 63
    iget-object v3, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->g:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->b:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3, v4}, Lteam/opay/pay/ad/AdReachHelp;->f(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->a:Lteam/opay/pay/ad/AdAnalyticsEventReport;

    .line 71
    .line 72
    invoke-static {v1}, Lteam/opay/pay/ad/AdAnalyticsEventReport;->b(Lteam/opay/pay/ad/AdAnalyticsEventReport;)Ljava/util/HashSet;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->b:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_3
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lteam/opay/pay/ad/AdAnalyticsEventReport$a;->c:Landroid/view/View;

    .line 84
    .line 85
    check-cast v0, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->d()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void
.end method
