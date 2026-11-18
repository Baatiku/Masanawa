.class public final synthetic Lteam/opay/business/picture/helper/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lteam/opay/business/picture/helper/SelectFileHelper;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/business/picture/helper/b;->a:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/business/picture/helper/b;->b:Ljava/io/File;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/business/picture/helper/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/helper/b;->a:Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/picture/helper/b;->b:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/picture/helper/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lteam/opay/business/picture/helper/SelectFileHelper$handlePicture$1;->c(Lteam/opay/business/picture/helper/SelectFileHelper;Ljava/io/File;Ljava/lang/String;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
