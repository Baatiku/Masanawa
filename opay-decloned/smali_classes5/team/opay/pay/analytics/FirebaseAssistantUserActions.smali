.class public final Lteam/opay/pay/analytics/FirebaseAssistantUserActions;
.super Ljava/lang/Object;
.source "AssistantUserActions.kt"

# interfaces
.implements Lp60;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/analytics/FirebaseAssistantUserActions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u0011B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/analytics/FirebaseAssistantUserActions;",
        "Lp60;",
        "Lcom/google/firebase/appindexing/FirebaseUserActions;",
        "firebaseUserActions",
        "<init>",
        "(Lcom/google/firebase/appindexing/FirebaseUserActions;)V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "a",
        "(Landroid/content/Intent;)V",
        "b",
        "",
        "status",
        "c",
        "(Landroid/content/Intent;Ljava/lang/String;)V",
        "Lcom/google/firebase/appindexing/FirebaseUserActions;",
        "Companion",
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
.field public static final b:Lteam/opay/pay/analytics/FirebaseAssistantUserActions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/firebase/appindexing/FirebaseUserActions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/analytics/FirebaseAssistantUserActions$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/analytics/FirebaseAssistantUserActions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/analytics/FirebaseAssistantUserActions;->b:Lteam/opay/pay/analytics/FirebaseAssistantUserActions$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/appindexing/FirebaseUserActions;)V
    .locals 1
    .param p1    # Lcom/google/firebase/appindexing/FirebaseUserActions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "firebaseUserActions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/analytics/FirebaseAssistantUserActions;->a:Lcom/google/firebase/appindexing/FirebaseUserActions;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http://schema.org/FailedActionStatus"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/analytics/FirebaseAssistantUserActions;->c(Landroid/content/Intent;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http://schema.org/CompletedActionStatus"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/analytics/FirebaseAssistantUserActions;->c(Landroid/content/Intent;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "actions.fulfillment.extra.ACTION_TOKEN"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/firebase/appindexing/builders/AssistActionBuilder;->setActionToken(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/AssistActionBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/firebase/appindexing/Action$Builder;->setActionStatus(Ljava/lang/String;)Lcom/google/firebase/appindexing/Action$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/appindexing/Action$Builder;->build()Lcom/google/firebase/appindexing/Action;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "build(...)"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lteam/opay/pay/analytics/FirebaseAssistantUserActions;->a:Lcom/google/firebase/appindexing/FirebaseUserActions;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/google/firebase/appindexing/FirebaseUserActions;->end(Lcom/google/firebase/appindexing/Action;)Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
