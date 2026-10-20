.class public final Lcom/opay/team/home/HomeBannerCloseEvent;
.super Ljava/lang/Object;
.source "HomeBannerCloseEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opay/team/home/HomeBannerCloseEvent;",
        "",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "data",
        "<init>",
        "(Lcom/opay/team/newhome/bean/NewBusinessData;)V",
        "a",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "()Lcom/opay/team/newhome/bean/NewBusinessData;",
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


# instance fields
.field private final a:Lcom/opay/team/newhome/bean/NewBusinessData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_banner_close_data"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V
    .locals 1
    .param p1    # Lcom/opay/team/newhome/bean/NewBusinessData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

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
    iput-object p1, p0, Lcom/opay/team/home/HomeBannerCloseEvent;->a:Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/HomeBannerCloseEvent;->a:Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 2
    .line 3
    return-object v0
.end method
