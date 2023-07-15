import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'mint' : ActorMethod<[Uint8Array | number[], string], Principal>,
}
