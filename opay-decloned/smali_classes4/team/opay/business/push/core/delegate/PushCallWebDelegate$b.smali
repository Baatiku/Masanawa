.class public final Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;
.super Ljava/lang/Object;
.source "PushCallWebDelegate.kt"

# interfaces
.implements Lm97;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/push/core/delegate/PushCallWebDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/business/push/core/delegate/PushCallWebDelegate$b",
        "Lm97;",
        "Lteam/opay/business/push/core/api/PushMessage;",
        "message",
        "",
        "a",
        "(Lteam/opay/business/push/core/api/PushMessage;)V",
        "business-push-core_release"
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
.field public final synthetic a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/business/push/core/api/PushMessage;)V
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->access$getMessageTypeList$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->getMessageType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/business/push/core/api/PushMessage;->isInvalidMessage()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 30
    .line 31
    invoke-static {v0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->access$getWebFoundationJsData$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Lcom/opay/webview/WebFoundationJsData;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkt6;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "toJson2(...)"

    .line 42
    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/opay/webview/WebFoundationJsData;->callH5Method(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
