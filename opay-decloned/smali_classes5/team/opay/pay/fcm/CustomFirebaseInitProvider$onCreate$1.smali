.class final Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomFirebaseInitProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/fcm/CustomFirebaseInitProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.fcm.CustomFirebaseInitProvider$onCreate$1"
    f = "CustomFirebaseInitProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/fcm/CustomFirebaseInitProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/fcm/CustomFirebaseInitProvider;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/fcm/CustomFirebaseInitProvider;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->this$0:Lteam/opay/pay/fcm/CustomFirebaseInitProvider;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->this$0:Lteam/opay/pay/fcm/CustomFirebaseInitProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;-><init>(Landroid/content/Context;Lteam/opay/pay/fcm/CustomFirebaseInitProvider;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getApps(Landroid/content/Context;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->this$0:Lteam/opay/pay/fcm/CustomFirebaseInitProvider;

    .line 41
    .line 42
    iget-object v0, p0, Lteam/opay/pay/fcm/CustomFirebaseInitProvider$onCreate$1;->$context:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lteam/opay/pay/fcm/CustomFirebaseInitProvider;->b(Lteam/opay/pay/fcm/CustomFirebaseInitProvider;Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method
