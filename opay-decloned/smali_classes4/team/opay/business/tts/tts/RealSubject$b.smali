.class public final Lteam/opay/business/tts/tts/RealSubject$b;
.super Ljava/lang/Object;
.source "Subject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/tts/tts/RealSubject;->h(Ljava/lang/String;Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/tts/tts/RealSubject;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/business/tts/tts/RealSubject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/tts/tts/RealSubject$b;->a:Lteam/opay/business/tts/tts/RealSubject;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/tts/tts/RealSubject$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/business/tts/tts/RealSubject$b;->a:Lteam/opay/business/tts/tts/RealSubject;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/tts/tts/RealSubject$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lteam/opay/business/tts/tts/RealSubject;->b(Lteam/opay/business/tts/tts/RealSubject;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/tts/tts/RealSubject$b;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
