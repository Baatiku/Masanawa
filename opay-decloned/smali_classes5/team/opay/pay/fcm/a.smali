.class public final synthetic Lteam/opay/pay/fcm/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/fcm/a;->a:Lcom/google/firebase/messaging/RemoteMessage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/a;->a:Lcom/google/firebase/messaging/RemoteMessage;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/fcm/OPayFCMService$onMessageReceived$1;->c(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
