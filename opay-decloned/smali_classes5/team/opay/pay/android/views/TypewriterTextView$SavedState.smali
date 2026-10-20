.class final Lteam/opay/pay/android/views/TypewriterTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TypewriterTextView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/views/TypewriterTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/views/TypewriterTextView$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0013H\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/pay/android/views/TypewriterTextView$SavedState;",
        "Landroid/view/View$BaseSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "<init>",
        "(Landroid/os/Parcelable;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "currentText",
        "",
        "getCurrentText",
        "()Ljava/lang/String;",
        "setCurrentText",
        "(Ljava/lang/String;)V",
        "fullText",
        "getFullText",
        "setFullText",
        "cursorPosition",
        "",
        "getCursorPosition",
        "()I",
        "setCursorPosition",
        "(I)V",
        "isTyping",
        "",
        "()Z",
        "setTyping",
        "(Z)V",
        "writeToParcel",
        "",
        "out",
        "flags",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/pay/android/views/TypewriterTextView$SavedState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lteam/opay/pay/android/views/TypewriterTextView$SavedState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cursorPosition:I

.field private fullText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isTyping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->Companion:Lteam/opay/pay/android/views/TypewriterTextView$SavedState$Companion;

    .line 8
    .line 9
    new-instance v0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->cursorPosition:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->isTyping:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCursorPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->cursorPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFullText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTyping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->isTyping:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCurrentText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCursorPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->cursorPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFullText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTyping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->isTyping:Z

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->currentText:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->fullText:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->cursorPosition:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->isTyping:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
