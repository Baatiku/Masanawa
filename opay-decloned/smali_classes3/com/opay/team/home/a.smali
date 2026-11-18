.class public final Lcom/opay/team/home/a;
.super Ljava/lang/Object;
.source "ActionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jq\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2.\u0010\u0010\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013Jc\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00062.\u0010\u0010\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u0015\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJa\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00152.\u0010\u0010\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f0\u000e\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010%\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010+\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\'\u0010-\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010.J/\u0010/\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008/\u00100J\'\u00101\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00081\u00102\u00a8\u00063"
    }
    d2 = {
        "Lcom/opay/team/home/a;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "actionUrl",
        "Lteam/opay/core/api/Country;",
        "country",
        "Lcom/opay/team/home/analytics/PageTarget;",
        "page",
        "Lcom/opay/team/home/analytics/PageSubModule;",
        "subModule",
        "",
        "Lkotlin/Pair;",
        "values",
        "",
        "x",
        "(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;)V",
        "from",
        "Lcom/opay/team/home/ServiceTypeRunner;",
        "w",
        "(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;)Lcom/opay/team/home/ServiceTypeRunner;",
        "F",
        "A",
        "(Landroid/content/Context;)V",
        "",
        "o",
        "(Landroid/content/Context;Ljava/lang/String;)Z",
        "serviceTypeRunner",
        "m",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/home/ServiceTypeRunner;[Lkotlin/Pair;)V",
        "q",
        "(Ljava/lang/String;)Lcom/opay/team/home/ServiceTypeRunner;",
        "Lteam/opay/pay/api/HomeNotice;",
        "homeNotice",
        "D",
        "(Lteam/opay/pay/api/HomeNotice;)V",
        "Lorg/json/JSONObject;",
        "data",
        "Lteam/opay/pay/home/Service;",
        "service",
        "B",
        "(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z",
        "t",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z",
        "K",
        "(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z",
        "u",
        "(Landroid/content/Context;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z",
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


# static fields
.field public static final a:Lcom/opay/team/home/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/home/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/team/home/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final C(Lteam/opay/pay/home/pay/Business;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "is from fun openbusiness "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/api/HomeNotice;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "showNotice data = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final G()Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/opay/team/home/analytics/PageSubModule;->SERVICE_UPDATE_TIPS:Lcom/opay/team/home/analytics/PageSubModule;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lkotlin/Pair;

    .line 18
    .line 19
    sget-object v3, Lcom/opay/team/home/analytics/LogAction;->CLICK:Lcom/opay/team/home/analytics/LogAction;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/opay/team/home/analytics/LogAction;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "show"

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object v0
.end method

.method public static final H()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "showServiceNotAvailableDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final I()Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/opay/team/home/analytics/PageSubModule;->SERVICE_UPDATE_TIPS:Lcom/opay/team/home/analytics/PageSubModule;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lkotlin/Pair;

    .line 18
    .line 19
    sget-object v3, Lcom/opay/team/home/analytics/LogAction;->CLICK:Lcom/opay/team/home/analytics/LogAction;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/opay/team/home/analytics/LogAction;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "cancel"

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object v0
.end method

.method public static final J(Landroid/content/Context;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/opay/team/home/a;->A(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/opay/team/home/analytics/PageSubModule;->SERVICE_UPDATE_TIPS:Lcom/opay/team/home/analytics/PageSubModule;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lkotlin/Pair;

    .line 23
    .line 24
    sget-object v2, Lcom/opay/team/home/analytics/LogAction;->CLICK:Lcom/opay/team/home/analytics/LogAction;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/opay/team/home/analytics/LogAction;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "ensure"

    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v2, v2, [Lkotlin/Pair;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object v1, v2, v3

    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final L(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "is from fun supportGuest businessName="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " is supportGuest="

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/a;->I()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/a;->r(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/a;->H()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/a;->p(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/home/a;->v(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/home/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/api/HomeNotice;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/a;->E(Lteam/opay/pay/api/HomeNotice;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/home/a;->L(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/home/pay/Business;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/a;->C(Lteam/opay/pay/home/pay/Business;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/a;->G()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/a;->s()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/a;->J(Landroid/content/Context;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, " from:"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, " actionUrl:"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final p(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final r(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/team/home/CommonBusiness;->Companion:Lcom/opay/team/home/CommonBusiness$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/opay/team/home/CommonBusiness$Companion;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final s()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final v(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0}, Lum8;->f(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "from fun:needJumpLogin (context) = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " supportGuest = "

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static synthetic y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 6
    .line 7
    :cond_0
    move-object v3, p3

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/opay/team/home/a;->w(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic z(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x4

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    sget-object p3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 6
    .line 7
    :cond_0
    move-object v3, p3

    .line 8
    and-int/lit8 p3, p7, 0x8

    .line 9
    .line 10
    const/4 p8, 0x0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move-object v4, p8

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v4, p4

    .line 16
    :goto_0
    and-int/lit8 p3, p7, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    move-object v5, p8

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move-object v5, p5

    .line 23
    :goto_1
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move-object v6, p6

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/opay/team/home/a;->x(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "android.intent.action.VIEW"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "market://details?id="

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v2, "com.android.vending"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    instance-of v0, p1, Landroid/app/Activity;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const/high16 v0, 0x10000000

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "https://play.google.com/store/apps/details?id="

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "&hl=en&gl=NG"

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const-string v0, "Please install Google play or Web browser"

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void
.end method

.method public final B(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/pay/home/pay/Business;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lteam/opay/pay/home/pay/Business;

    .line 20
    .line 21
    invoke-virtual {v1, p1, p2, p3}, Lteam/opay/pay/home/pay/Business;->open(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    sget-object p1, Lxk8;->a:Lxk8;

    .line 28
    .line 29
    new-instance p2, Lmd;

    .line 30
    .line 31
    invoke-direct {p2, v1}, Lmd;-><init>(Lteam/opay/pay/home/pay/Business;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "ActionManager"

    .line 35
    .line 36
    invoke-virtual {p1, p3, p2}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final D(Lteam/opay/pay/api/HomeNotice;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/opay/team/home/dialog/HomeNoticeFragment;->f:Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/api/HomeNotice;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/api/HomeNotice;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_3

    .line 21
    .line 22
    :cond_2
    move-object v3, v1

    .line 23
    :cond_3
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/api/HomeNotice;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    move-object v1, v4

    .line 33
    :cond_5
    :goto_0
    invoke-virtual {v0, v2, v3, v1}, Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/opay/team/home/dialog/HomeNoticeFragment;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 38
    .line 39
    sget-object v2, Ld00;->a:Ld00;

    .line 40
    .line 41
    invoke-virtual {v2}, Ld00;->e()Landroid/app/Activity;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    const/4 v2, 0x0

    .line 53
    :goto_1
    if-nez v2, :cond_7

    .line 54
    .line 55
    return-void

    .line 56
    :cond_7
    invoke-virtual {v1, v0, v2}, Lteam/opay/odialog/DialogQueueUtils;->e(Lteam/opay/odialog/BaseDialogFragment;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lxk8;->a:Lxk8;

    .line 60
    .line 61
    new-instance v1, Lid;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lid;-><init>(Lteam/opay/pay/api/HomeNotice;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "ActionManager"

    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final F()V
    .locals 14

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lteam/opay/pay/R$string;->omain_service_need_upgrade_tips:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget v1, Lteam/opay/pay/R$string;->omain_confirm:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-instance v1, Lteam/opay/pay/update/bean/VersionData;

    .line 24
    .line 25
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    const-string v13, "1"

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    const-string v6, ""

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const-wide/16 v9, 0x3

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    move-object v2, v1

    .line 39
    invoke-direct/range {v2 .. v13}, Lteam/opay/pay/update/bean/VersionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IJIILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lteam/opay/pay/update/dialog/AppUpdateDialog;->j:Lteam/opay/pay/update/dialog/AppUpdateDialog$Companion;

    .line 43
    .line 44
    new-instance v3, Lteam/opay/pay/update/dialog/UpgradeDialogStyle;

    .line 45
    .line 46
    sget-object v4, Lteam/opay/pay/update/dialog/ConfirmStyle;->DEFAULT_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 47
    .line 48
    invoke-direct {v3, v4}, Lteam/opay/pay/update/dialog/UpgradeDialogStyle;-><init>(Lteam/opay/pay/update/dialog/ConfirmStyle;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Lteam/opay/pay/update/dialog/AppUpdateDialog$Companion;->a(Lteam/opay/pay/update/bean/VersionData;Lteam/opay/pay/update/dialog/UpgradeDialogStyle;)Lteam/opay/pay/update/dialog/AppUpdateDialog;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lpd;

    .line 56
    .line 57
    invoke-direct {v2}, Lpd;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lteam/opay/pay/update/dialog/AppUpdateDialog;->H(Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lqd;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Lqd;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lteam/opay/pay/update/dialog/AppUpdateDialog;->N(Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lrd;

    .line 72
    .line 73
    invoke-direct {v0}, Lrd;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lteam/opay/pay/update/dialog/AppUpdateDialog;->M(Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 80
    .line 81
    sget-object v2, Ld00;->a:Ld00;

    .line 82
    .line 83
    invoke-virtual {v2}, Ld00;->e()Landroid/app/Activity;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    instance-of v3, v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 88
    .line 89
    if-eqz v3, :cond_0

    .line 90
    .line 91
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 95
    :goto_0
    if-nez v2, :cond_1

    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    invoke-virtual {v0, v1, v2}, Lteam/opay/odialog/DialogQueueUtils;->e(Lteam/opay/odialog/BaseDialogFragment;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lxk8;->a:Lxk8;

    .line 102
    .line 103
    new-instance v1, Lsd;

    .line 104
    .line 105
    invoke-direct {v1}, Lsd;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "ActionManager"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final K(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, "/#"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p4

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p4}, Landroid/net/Uri;->isHierarchical()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p4, 0x0

    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    const-string v1, "guest"

    .line 29
    .line 30
    invoke-virtual {p4, v1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_1
    sget-object p4, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 35
    .line 36
    const-class v1, Lteam/opay/pay/home/pay/Business;

    .line 37
    .line 38
    invoke-virtual {p4, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 60
    .line 61
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lteam/opay/pay/home/pay/Business;

    .line 67
    .line 68
    invoke-virtual {v3, p1, p2, p3}, Lteam/opay/pay/home/pay/Business;->supportGuest(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 73
    .line 74
    sget-object v3, Lxk8;->a:Lxk8;

    .line 75
    .line 76
    new-instance v4, Ljd;

    .line 77
    .line 78
    invoke-direct {v4, v1, v2}, Ljd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "ActionManager"

    .line 82
    .line 83
    invoke-virtual {v3, v1, v4}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :cond_3
    return v0
.end method

.method public final varargs m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/home/ServiceTypeRunner;[Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/opay/team/home/ServiceTypeRunner;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "COMMON"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p4}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "_"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v0, Lxk8;->a:Lxk8;

    .line 55
    .line 56
    new-instance v1, Lhd;

    .line 57
    .line 58
    invoke-direct {v1, p1, p3, p2}, Lhd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "ActionManager"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 67
    .line 68
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 77
    .line 78
    const/4 v2, 0x4

    .line 79
    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lkotlin/Pair;

    .line 83
    .line 84
    const-string v3, "from"

    .line 85
    .line 86
    invoke-direct {v2, v3, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-instance p3, Lkotlin/Pair;

    .line 93
    .line 94
    invoke-virtual {p4}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    const-string v2, "name"

    .line 103
    .line 104
    invoke-direct {p3, v2, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance p3, Lkotlin/Pair;

    .line 111
    .line 112
    const-string p4, "url"

    .line 113
    .line 114
    invoke-direct {p3, p4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p5}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    new-array p2, p2, [Lkotlin/Pair;

    .line 128
    .line 129
    invoke-virtual {v1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, [Lkotlin/Pair;

    .line 134
    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 136
    .line 137
    .line 138
    :cond_1
    return-void
.end method

.method public final o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "jump_target"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p2, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "9"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Ld00;->a:Ld00;

    .line 29
    .line 30
    invoke-virtual {v1}, Ld00;->e()Landroid/app/Activity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lteam/opay/swarmfoundation/applink/OuterAppLink;->a:Lteam/opay/swarmfoundation/applink/OuterAppLink;

    .line 35
    .line 36
    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    new-instance v3, Lnd;

    .line 44
    .line 45
    invoke-direct {v3}, Lnd;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1, p2, v3}, Lteam/opay/swarmfoundation/applink/OuterAppLink;->b(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v1, 0x1

    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "open failed:"

    .line 61
    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return v1

    .line 80
    :cond_1
    return v3
.end method

.method public final q(Ljava/lang/String;)Lcom/opay/team/home/ServiceTypeRunner;
    .locals 9

    .line 1
    invoke-static {}, Lteam/opay/pay/home/Service;->values()[Lteam/opay/pay/home/Service;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-string v7, "toLowerCase(...)"

    .line 19
    .line 20
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    const/4 v8, 0x0

    .line 36
    invoke-static {v6, v5, v2, v7, v8}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    new-instance v0, Lcom/opay/team/home/ServiceTypeRunner;

    .line 43
    .line 44
    new-instance v1, Lkd;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lkd;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v4, v1}, Lcom/opay/team/home/ServiceTypeRunner;-><init>(Lteam/opay/pay/home/Service;Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lcom/opay/team/home/ServiceTypeRunner;

    .line 57
    .line 58
    sget-object v0, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 59
    .line 60
    new-instance v1, Lld;

    .line 61
    .line 62
    invoke-direct {v1}, Lld;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0, v1}, Lcom/opay/team/home/ServiceTypeRunner;-><init>(Lteam/opay/pay/home/Service;Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1, p2}, Lpcb;->a(Landroid/content/Context;Ljava/lang/String;)Lteam/opay/pay/api/HomeNotice;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/opay/team/home/HomeSettingsStorage;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/opay/team/home/HomeSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->e()Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v1

    .line 25
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "+"

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->g()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    :goto_1
    if-lez v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/opay/team/home/HomeSettingsStorage;->j(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v4, -0x1

    .line 67
    if-ne v3, v4, :cond_3

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->g()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 83
    :goto_2
    invoke-virtual {v0, p1, v3}, Lcom/opay/team/home/HomeSettingsStorage;->z(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    const/16 v5, 0x3e8

    .line 91
    .line 92
    int-to-long v5, v5

    .line 93
    div-long/2addr v3, v5

    .line 94
    sget-object v5, Lcom/opay/team/home/dialog/HomeNoticeFragment;->f:Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/opay/team/home/dialog/HomeNoticeFragment$Companion;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-nez p3, :cond_c

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_4
    const/4 p3, 0x1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    const/4 v1, 0x0

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    :goto_3
    const/4 v1, 0x1

    .line 125
    :goto_4
    if-nez v1, :cond_c

    .line 126
    .line 127
    const-wide/16 v5, 0x0

    .line 128
    .line 129
    if-eqz p2, :cond_7

    .line 130
    .line 131
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->f()Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move-wide v7, v5

    .line 143
    :goto_5
    cmp-long v1, v7, v3

    .line 144
    .line 145
    if-gtz v1, :cond_c

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->c()Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 156
    .line 157
    .line 158
    move-result-wide v5

    .line 159
    :cond_8
    cmp-long v1, v5, v3

    .line 160
    .line 161
    if-ltz v1, :cond_c

    .line 162
    .line 163
    if-eqz p2, :cond_a

    .line 164
    .line 165
    invoke-virtual {p2}, Lteam/opay/pay/api/HomeNotice;->g()Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-nez v1, :cond_9

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_a

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    goto :goto_7

    .line 180
    :cond_a
    :goto_6
    const/4 v1, 0x0

    .line 181
    :goto_7
    if-nez v1, :cond_b

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Lcom/opay/team/home/HomeSettingsStorage;->j(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-lez v1, :cond_c

    .line 188
    .line 189
    :cond_b
    invoke-virtual {v0, p1}, Lcom/opay/team/home/HomeSettingsStorage;->r(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p2}, Lcom/opay/team/home/a;->D(Lteam/opay/pay/api/HomeNotice;)V

    .line 193
    .line 194
    .line 195
    return p3

    .line 196
    :cond_c
    return v2
.end method

.method public final u(Landroid/content/Context;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "action_url"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "put(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/opay/team/home/a;->K(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sget-object v0, Lxk8;->a:Lxk8;

    .line 22
    .line 23
    new-instance v1, Lod;

    .line 24
    .line 25
    invoke-direct {v1, p1, p2}, Lod;-><init>(Landroid/content/Context;Z)V

    .line 26
    .line 27
    .line 28
    const-string v2, "ActionManager"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lum8;->f(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    sget-object p1, Lql8;->a:Lql8;

    .line 43
    .line 44
    sget-object p2, Ld00;->a:Ld00;

    .line 45
    .line 46
    invoke-virtual {p2}, Ld00;->e()Landroid/app/Activity;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    return v0

    .line 53
    :cond_0
    invoke-virtual {p1, p2, p3}, Lql8;->k(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_1
    return v0
.end method

.method public final varargs w(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;)Lcom/opay/team/home/ServiceTypeRunner;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/Country;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/opay/team/home/ServiceTypeRunner;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "country"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "from"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "values"

    .line 17
    .line 18
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p2, :cond_5

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/home/a;->o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {p0, p2}, Lcom/opay/team/home/a;->q(Ljava/lang/String;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0, p1, v2, p2}, Lcom/opay/team/home/a;->u(Landroid/content/Context;Lteam/opay/pay/home/Service;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p4}, Lcom/opay/team/home/a;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "action_url"

    .line 63
    .line 64
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    const-string v0, "apply(...)"

    .line 74
    .line 75
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/opay/team/home/ServiceTypeRunner;->b()Lteam/opay/pay/home/Service;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, p1, v3, v0}, Lcom/opay/team/home/a;->B(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sget-object v3, Lql8;->a:Lql8;

    .line 87
    .line 88
    const-string v4, ""

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Lql8;->p(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    invoke-static {p2}, Ln27;->a(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/opay/team/home/a;->F()V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_2
    if-nez v2, :cond_3

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p3}, Lcom/opay/team/home/ServiceTypeRunner;->a()Lkotlin/jvm/functions/Function0;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-lez v0, :cond_4

    .line 121
    .line 122
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p5}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-instance p5, Lkotlin/Pair;

    .line 132
    .line 133
    sget-object v1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a(Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "isConnected"

    .line 144
    .line 145
    invoke-direct {p5, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p5}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 152
    .line 153
    .line 154
    move-result p5

    .line 155
    new-array p5, p5, [Lkotlin/Pair;

    .line 156
    .line 157
    invoke-virtual {v0, p5}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p5

    .line 161
    move-object v7, p5

    .line 162
    check-cast v7, [Lkotlin/Pair;

    .line 163
    .line 164
    move-object v2, p0

    .line 165
    move-object v3, p1

    .line 166
    move-object v4, p2

    .line 167
    move-object v5, p4

    .line 168
    move-object v6, p3

    .line 169
    invoke-virtual/range {v2 .. v7}, Lcom/opay/team/home/a;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/home/ServiceTypeRunner;[Lkotlin/Pair;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    return-object p3

    .line 173
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string p5, "Country:"

    .line 179
    .line 180
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p5, " actionUrl:"

    .line 187
    .line 188
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p2, " from:"

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    return-object v1
.end method

.method public final varargs x(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Lcom/opay/team/home/analytics/PageTarget;Lcom/opay/team/home/analytics/PageSubModule;[Lkotlin/Pair;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/opay/team/home/analytics/PageTarget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/opay/team/home/analytics/PageSubModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/Country;",
            "Lcom/opay/team/home/analytics/PageTarget;",
            "Lcom/opay/team/home/analytics/PageSubModule;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "country"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "values"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/opay/team/home/analytics/PageTarget;->getAName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v0

    .line 34
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    :cond_2
    if-eqz p5, :cond_3

    .line 43
    .line 44
    invoke-virtual {p5}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v1, v0

    .line 50
    :goto_1
    if-eqz v1, :cond_7

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    if-eqz p4, :cond_5

    .line 60
    .line 61
    invoke-virtual {p4}, Lcom/opay/team/home/analytics/PageTarget;->getAName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    move-object p4, v0

    .line 67
    :goto_2
    if-eqz p5, :cond_6

    .line 68
    .line 69
    invoke-virtual {p5}, Lcom/opay/team/home/analytics/PageSubModule;->getAName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_6
    new-instance p5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p4, "_"

    .line 82
    .line 83
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    :goto_3
    move-object v4, p4

    .line 94
    goto :goto_5

    .line 95
    :cond_7
    :goto_4
    const-string p4, ""

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_5
    array-length p4, p6

    .line 99
    invoke-static {p6, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    move-object v5, p4

    .line 104
    check-cast v5, [Lkotlin/Pair;

    .line 105
    .line 106
    move-object v0, p0

    .line 107
    move-object v1, p1

    .line 108
    move-object v2, p2

    .line 109
    move-object v3, p3

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/opay/team/home/a;->w(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_6
    return-void
.end method
