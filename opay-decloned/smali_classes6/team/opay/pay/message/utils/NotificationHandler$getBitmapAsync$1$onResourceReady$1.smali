.class final Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $body:Ljava/lang/String;

.field final synthetic $businessType:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imgUrl:Ljava/lang/String;

.field final synthetic $logoId:I

.field final synthetic $messageId:Ljava/lang/String;

.field final synthetic $resource:Landroid/graphics/drawable/Drawable;

.field final synthetic $taskData:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $virtualParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$resource:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$title:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$body:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$action:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$messageId:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$logoId:I

    .line 14
    .line 15
    iput-object p8, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$imgUrl:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$taskData:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$businessType:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$virtualParam:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    .line 2
    iget-object v0, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$resource:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v0, "resource as BitmapDrawable).bitmap"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lteam/opay/pay/message/utils/NotificationHandler;->a:Lteam/opay/pay/message/utils/NotificationHandler;

    .line 4
    iget-object v2, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$context:Landroid/content/Context;

    .line 5
    iget-object v3, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$title:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$body:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$action:Ljava/lang/String;

    .line 8
    iget-object v6, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$messageId:Ljava/lang/String;

    .line 9
    iget v7, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$logoId:I

    .line 10
    iget-object v9, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$imgUrl:Ljava/lang/String;

    .line 11
    iget-object v10, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$taskData:Ljava/lang/String;

    iget-object v11, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$businessType:Ljava/lang/String;

    .line 12
    iget-object v12, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;->$virtualParam:Ljava/lang/String;

    .line 13
    invoke-virtual/range {v1 .. v12}, Lteam/opay/pay/message/utils/NotificationHandler;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
