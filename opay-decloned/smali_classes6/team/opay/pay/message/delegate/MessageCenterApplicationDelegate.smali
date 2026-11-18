.class public final Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;
.super Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
.source "MessageCenterApplicationDelegate.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016J\u0008\u0010\u001c\u001a\u00020\u0013H\u0002J\u0008\u0010\u001d\u001a\u00020\u0013H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;",
        "Lteam/opay/swarmfoundation/frame/ApplicationDelegate;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "generator",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "getGenerator",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "bindFCMToken",
        "",
        "isFirebaseMessagingAvailable",
        "",
        "isGSOpen",
        "onCancel",
        "onCreate",
        "application",
        "Landroid/app/Application;",
        "onSuccess",
        "refreshFcmToken",
        "uploadFcmToken",
        "Companion",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_FIREBASE_MESSAGING_TOKEN:Ljava/lang/String; = "firebaseMessagingToken"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MessageCenter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public context:Landroid/content/Context;

.field private final generator:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->Companion:Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 5
    .line 6
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->generator:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->bindFCMToken$lambda-0(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->refreshFcmToken$lambda-2(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final bindFCMToken()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->isGSOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->isFirebaseMessagingAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->uploadFcmToken()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ls79;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Ls79;-><init>(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private static final bindFCMToken$lambda-0(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->getPreferences()Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "firebaseMessagingToken"

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->uploadFcmToken()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->refreshFcmToken$lambda-2$lambda-1(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 2

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
    sget-object v1, Lteam/opay/pay/envconfigapi/StorageBusiness;->SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->f(Lteam/opay/pay/envconfigapi/StorageBusiness;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private final isFirebaseMessagingAvailable()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "getInstance()"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :catch_0
    :cond_0
    return v0
.end method

.method private final isGSOpen()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getInstance()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method private final refreshFcmToken()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->isGSOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->deleteToken()Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lt79;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lt79;-><init>(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final refreshFcmToken$lambda-2(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lu79;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lu79;-><init>(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static final refreshFcmToken$lambda-2$lambda-1(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "task"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->getPreferences()Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "firebaseMessagingToken"

    .line 32
    .line 33
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->uploadFcmToken()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private final uploadFcmToken()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$uploadFcmToken$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate$uploadFcmToken$1;-><init>(Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/message/delegate/MessageMainControl;->q(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->generator:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->refreshFcmToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;->onCreate(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->setContext(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lzl8;->a:Lzl8;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lzl8;->a(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->bindFCMToken()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->bindFCMToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageCenterApplicationDelegate;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
