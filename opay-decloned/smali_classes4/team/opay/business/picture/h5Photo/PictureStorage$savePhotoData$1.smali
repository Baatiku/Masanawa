.class final Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PictureStorage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/h5Photo/PictureStorage;->f(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)V
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
    c = "team.opay.business.picture.h5Photo.PictureStorage$savePhotoData$1"
    f = "PictureStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

.field label:I


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->$data:Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->$data:Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;-><init>(Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/google/gson/Gson;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->$data:Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lteam/opay/business/picture/h5Photo/PictureStorage;->b:Lteam/opay/business/picture/h5Photo/PictureStorage;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/business/picture/h5Photo/PictureStorage;->d()Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lteam/opay/business/picture/h5Photo/PictureStorage$savePhotoData$1;->$data:Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lteam/opay/business/picture/h5Photo/PictureStorage;->a(Lteam/opay/business/picture/h5Photo/PictureStorage;Lteam/opay/business/picture/h5Photo/TakePhotoUploadData;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
