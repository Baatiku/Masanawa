.class public final synthetic Lteam/opay/business/picture/helper/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/business/picture/helper/CameraHelper;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/business/picture/helper/a;->a:Lteam/opay/business/picture/helper/CameraHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/business/picture/helper/a;->b:Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/a;->a:Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/picture/helper/a;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lteam/opay/business/picture/helper/CameraHelper$handlePicture$1;->c(Lteam/opay/business/picture/helper/CameraHelper;Ljava/io/File;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
